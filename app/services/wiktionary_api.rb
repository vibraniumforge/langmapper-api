class WiktionaryApi
  require "open-uri"

  # We need to go to 3 pages to get all the info
  # First page, https://en.wiktionary.org/wiki/gold
  # get English etymology, and proper link to second page, of 3 possible links. 1 link is on the same page, but we still need it.
  # Second page, https://en.wiktionary.org/wiki/gold/translations#Noun, (2 of the 3 links)
  # get the yellow translations table.
  # get the Word definition on this table
  # get the list of all translations on this table.
  # loop over every translation
  # get translation, romanization, gender, and full link.
  # full link is stored for the icon
  # and full link is followed to page 3
  # Third page, https://en.wiktionary.org/wiki/%D0%B0%D1%85%D1%8C%D1%8B#Abkhaz, get the etymology.
  #
  # Save definition to Word.
  # Save 7 fields to Translation.
  # save word_id (query from our db) and language_id (query from our db),
  # save translation, romanization, gender, link, and etymology to Translation.
  def self.get_info(chosen_word)
    t1 = Time.now

    main_page_endpoint = "https://en.wiktionary.org/api/rest_v1/page/html/#{chosen_word}"

    target_page = Nokogiri::HTML(URI.open(main_page_endpoint))

    saved_main_html_file = File.open("#{Rails.root.to_s}/app/services/saves/#{chosen_word}.html", "w")
    File.write(saved_main_html_file, target_page)
    saved_main_html_file.close

    word_page = Nokogiri::HTML(URI.open(saved_main_html_file))

    # The english language page links to all the other languages.
    # It needs a separate case to grab its info.

    # Some etymology p text elements are located differently than others.
    # There is sometimes an image in the way. This gets around the image.
    # word_page.css("[id^='Etymology']")[0].next_element.next_element.next_element.text
    # vs. word_page.css("[id^='Etymology']")[0].next_element.next_element.text
    curr_ety_element = word_page.css("[id^='Etymology']")[0]

    while !curr_ety_element.next_element.nil?
      if curr_ety_element.name == "p"
        break
      else
        curr_ety_element = curr_ety_element.next_element
      end
    end

    etymology_english = curr_ety_element.text

    # The translations table that is needed can be in 1 of 3 places.
    # 1 is on the same page, in a different section.
    # 2 on a new page, '/translations § Noun'
    # 3 on a new page, '/translations#Noun'
    # If it has either of # 2 or #3, it is on another page.
    # There are two different formats of the link that are needed to get to that other page.
    # see which of the two link styles is used on this page

    str1 = "#{chosen_word}/translations §#{32.chr("UTF-8")}Noun"
    str2 = "#{chosen_word}/translations §#{160.chr("UTF-8")}Noun"
    str3 = "#{chosen_word}/translations#Noun"

    path1 = word_page.css("a:contains('#{str1}')")
    path2 = word_page.css("a:contains('#{str2}')")
    path3 = word_page.css("a:contains('#{str3}')")

    layout_path = nil
    chosen_path = nil
    if !path1.nil? && path1.length > 0
      layout_path = path1[0]["href"].gsub!(".", "")
      chosen_path = 1
    end
    if !path2.nil? && path2.length > 0
      layout_path = path2[0]["href"].gsub!(".", "")
      chosen_path = 2
    end
    if !path3.nil? && path3.length > 0
      layout_path = path3[0]["href"].gsub!(".", "")
      chosen_path = 3
    end

    if layout_path.nil?
      # translations_page = "https://en.wiktionary.org/wiki/#{chosen_word}/translations#Noun"
      translations_page = "https://en.wiktionary.org/wiki/#{chosen_word}#Translations"
      translations_page_parsed = Nokogiri::HTML(URI.open(URI.parse(translations_page)))
    else
      # translations_page = "https://en.wiktionary.org/#{layout_path}#Noun"
      translations_page = "https://en.wiktionary.org/wiki#{layout_path}"
      translations_page_parsed = Nokogiri::HTML(URI.open(translations_page))
    end

    saved_translation_html_file = File.open("#{Rails.root.to_s}/app/services/saves/#{chosen_word}-translations.html", "w")
    File.write(saved_translation_html_file, translations_page_parsed)
    saved_translation_html_file.close

    translations_page_parsed = Nokogiri::HTML(URI.open(saved_translation_html_file))

    # for words that are not the top noun definition
    case chosen_word
    when "lead"
      translations_page_parsed = Nokogiri::HTML(URI.open("https://en.wiktionary.org/wiki/lead/translations#Etymology_1"))
    when "wind"
      translations_page_parsed = Nokogiri::HTML(URI.open("https://en.wiktionary.org/wiki/wind/translations#Etymology_1"))
    end

    correct_index = 0
    # specific exceptions for certain words
    case chosen_word
    when "grapefruit", "blueberry", "mulberry", "orange", "raspberry", "loom", "seed"
      correct_index = 1
    when "lime"
      correct_index = 6
    end

    yellow_translations_table = translations_page_parsed.css("td.translations-cell")[correct_index].children.children

    all_li_array = []
    yellow_translations_table.each do |list_item|
      if list_item.to_s != "\n"
        all_li_array << list_item
      end
    end

    # NEED TO FIND for word: definition
    definition = translations_page_parsed.css("table.translations")[correct_index].attributes["data-gloss"].value

    # NEED TO FIND for translation: #1 word_id, #2 language_id, #
    # 3 gender, #4 translation, # 5 romanization,
    #6 full_link_eng, #7 etymology,

    #1 word_id
    # Create a new word, or update a seeded word
    # Get the word_id
    # Add the definition to the word

    # word_id = Word.find_by({ word_name: chosen_word }).id
    # word_id = Word.find_or_create_by(word_name: chosen_word).id
    # @word = Word.find(word_id)
    # @word.update({ definition: definition })

    @word = Word.find_or_create_by({ word_name: chosen_word })
    word_id = @word.id
    @word.update({ definition: definition })

    # create the English entry first.
    # This is different from the other langs
    Translation.create({ language_id: 1, word_id: word_id, translation: chosen_word, romanization: chosen_word, link: "https://en.wiktionary.org/wiki/#{chosen_word}", etymology: etymology_english, gender: nil })

    puts "=================================================================="
    puts "Word: #{chosen_word}"
    puts "Word ID: #{word_id}"
    puts "Definition: #{definition}"
    puts "Li Count: #{all_li_array.count}"

    errors_ar = []

    # This is all the current languages in the DB. Source is seeds.
    # This exists to save a check to see if there is a matching language every time. More performant
    all_langs_hash = Language.current_langauges_hash

    # loop over results and get the info.
    counter = 1
    all_li_array.each do |li|
      etymology = nil

      #2 find language_id

      language_name = li.text.split(":")[0]
      language_instance = all_langs_hash.select { |lang| lang[:name] == language_name }.first
      if language_instance.nil?
        next
      else
        language_id = language_instance.id
      end

      #3 find gender

      if li.css("span.gender")[0]&.text
        gender = li.css("span.gender")[0].text
      else
        gender = nil
      end

      #4 find translation

      if li.css("span")[0]&.text && li.css("span")[0]&.text != "please add this translation if you can"
        translation = li.css("span")[0]&.text.gsub(/\(compound\)/, "").gsub(/\(please verify\)/, "")
        # if the translation is '(', then the setup is different. To get the first definition, use li.css("span.Latn")[0].text
        if translation == "("
          # translation = li.css("span").text.gsub(/\((♂♀)\)/, "").gsub(/\(((Föhr-Amrum))\)/, "").split("(")[0].gsub(/\W/,"")
          translation = li.css("span.Latn")[0].text
        end
        if language_name == "Serbo-Croatian"
          translation = li.css("span.Cyrl")[0]&.text
        end
      else
        translation = nil
      end

      #5 find romanization

      if !li.css("span.Latn")[0]&.text.nil?
        romanization = li.css("span.Latn")[0].text
      else
        romanization = translation
      end

      #6 find full_link_eng
      # And to store as a link for #6.
      # We need the link to go to that page and get more info for #7.

      # We want to ignore "&action=edit" because that is an invalid link.
      # We also want to ignore non-ascii lang names, which always error.
      # => "/wiki/goud#Afrikaans" || nil
      li_obj = li.css("a")[0]
      li_obj_val = !li_obj.nil? ? li_obj&.attributes["href"]&.value : nil

      if !li_obj_val.nil? && !li_obj_val&.include?("&action=edit")
        if li_obj_val.ascii_only?
          # short_link_eng = URI.parse(li_obj_val).path
          # short_link_eng = URI.parse(li_obj_val)
          short_link_eng = li_obj_val
        else
          error_hash[language_name] = "non-ascii char #{li_obj_val} in #{language_name} short link." unless ["Norwegian", "Franco-Provençal"].include?(language_name)
          short_link_eng = nil
        end
      end

      if !short_link_eng.nil? && short_link_eng.ascii_only?
        full_link_eng = "https://en.wiktionary.org" << short_link_eng
      end

      # exception for non-ascii language_names that always error.
      # Switch here to ascii (no accents) so that we get the right info.
      # Then, switch back later so we save the correct link.

      if !li_obj_val.nil? && !li_obj_val&.include?("&action=edit")
        if (language_name == "Norwegian") && !short_link_eng.nil? && short_link_eng.include?("å")
          full_link_eng = "https://en.wiktionary.org/wiki/#{translation}#Norwegian_Bokmal"
          # case language_name
          # when "Norwegian"
          #   full_link_eng = "https://en.wiktionary.org/wiki/#{translation}#Norwegian_Bokmal"
          # when "Franco-Provençal"
          #   full_link_eng = "https://en.wiktionary.org/wiki/#{translation}#Franco-Provencal"
          # end
        end
      end

      if language_name.include?("'") || language_name.include?("(")
        etymology_page = nil
      end

      if full_link_eng&.ascii_only? && !full_link_eng.include?("&action=edit")
        # etymology_page = Nokogiri::HTML(URI.open(full_link_eng))
        new_link = full_link_eng.split("/").last
        etymology_endpoint = "https://en.wiktionary.org/api/rest_v1/page/html/#{new_link}"
        # if !short_link_eng.include?(translation)
        #   etymology_endpoint = "#{translation}##{language_name}"
        # end
        #
        if short_link_eng.split("").first == "#"
          new_link = "#{translation}##{language_name.split(" ").join("_")}"
          etymology_endpoint = "https://en.wiktionary.org/api/rest_v1/page/html/#{new_link}"
        end
        etymology_page = Nokogiri::HTML(URI.open(etymology_endpoint))
      end

      #7 find etymology
      # LOGIC SUMMARY
      # language_name_span_id is the ID of a SPAN under a H2 with the text of language_name.
      # get language_name_span_id, then go to its parent, the H2 with the text of language_name.
      # Then loop down from there to find the etymology.
      # The next element is a H3 with the id="etymology". Keep going.
      # Sometimes the next element is a div class="thumb tright". Most of the time not.
      # Last is the p tag with the etymology.

      # format the name to the wiktionary style
      language_name_span_id = language_name.split(" ").join("_")

      # exception for Norwegian
      if language_name == "Norwegian"
        language_name_span_id = "Norwegian_Bokmål"
      end


      # if the page exists, and the page has the language id on it, and there is an etymology element length
      if !etymology_page.nil? && etymology_page.css("[id=#{language_name_span_id}]").length > 0 && (etymology_page.css("[id^='Etymology']").length > 0 || etymology_page.css("[id^='Etymology_1']").length > 0)

        # current_element is now the H3 with text and ID "Etymology"
        # current_element = etymology_page.css("[id=#{language_name_span_id}]")[0]&.parent.next_element
        current_element = etymology_page.css("[id=#{language_name_span_id}]")[0]

        # If there is a current element, I need the current element to not be a h2, because that is my stop sign.
        # Some pages have another h2 beneath with an etymology from another lang. This is not right. This way, the next etymology overwrites the first one.
        # NULL goes in the DB, which is right, but an incorrect value.

        #  begin the while loop.
        while !current_element.nil?

          # ety is here => etymology_page.css("[id=#{language_name_span_id}]")[0].parent.children[3].children[2].text
          # or here => current_element.next_element.next_element.children[2].text

          # if there is an etymology H3 that has info, do the while loop
          if current_element.text.include?("Etymology") && !current_element&.next_element&.text&.include?("(This etymology is missing or incomplete.")

            # usually current_element is a H3 with id=etymology, then the next p tag that has the etymology.
            # But not always. This gets the h3 tag, and loops until it finds the p tag, THEN takes the value.

            # Loop until the p is found. This ignores random divs that are sometimes there.
            # while !current_element.nil? && current_element.name != "p" && current_element.name != "div"
            current_child = current_element.children[0]
            while !current_element.nil? && !current_element.text.nil? && !current_child.nil? && !current_child.text.nil? && current_child.name != "p"
              current_child = current_child.next_element
            end
            # the loop is over. This is the p. Get .text.strip and break the loop
            if !current_child.nil? && !current_child.text.nil? && !current_child.text.include?("(This etymology is missing")
              etymology = current_child.text.strip
            end
            break
          end

          # if there is not the etymology H3 that has the info, keep incrementing
          current_element = current_element.next_element
        end
        # there is no etymology. Set it to nil
      else
        etymology = nil
      end

      # account for Galician century in first sentence
      if language_name == "Galician" && etymology
        split_etymology = etymology.strip.split(".")
        if split_etymology.length > 1
          galician_first_sentence = split_etymology[0]
          if (galician_first_sentence.downcase.include?("century") || galician_first_sentence.downcase.include?("attested")) && !galician_first_sentence.downcase.include?("from")
            etymology = split_etymology.push(split_etymology.shift).join(". ").concat(".")
          end
        end
      end

      # save all 7 things I need
      @translation = Translation.new({ language_id: language_id, word_id: word_id, translation: translation, romanization: romanization, link: full_link_eng, etymology: etymology, gender: gender })
      # output this info to the console
      if !full_link_eng.nil? && @translation.save
        puts "\n"
        # puts "language_id: #{language_id}"
        puts "Lang: #{language_name}"
        # puts "#{index + 1}. Lang: #{language_name} - Trans: #{translation ? translation : "NONE"} - Roman: #{romanization} - Gender: #{gender ? gender : "NONE"} - Ety: #{etymology ? etymology : "NONE"}"
        # puts "\n"
        # puts "================================================================="
        counter += 1
      else
        puts "Translation NOT saved for #{language_name}"
        errors = @translation.errors.full_messages.join(", ")
        # puts "Errors= #{errors}"
        error_hash = {}
        error_hash[language_name] = errors
        errors_ar << error_hash
      end
    end

    # output all searches to the console
    t2 = Time.now
    time = t2 - t1
    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    puts "\n"
    puts "DONE with <<< #{chosen_word.upcase}, #{definition} >>> \n"
    puts "Count: #{all_li_array.count} entries on the table"
    puts "#{counter} entries saved to DB"
    puts "in #{time.round(2)} seconds"
    puts "Errors: #{errors_ar}"
    puts "layout_path = #{layout_path}"
    puts "chosen_path = #{chosen_path}"
    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
  end
end
