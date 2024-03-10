class WiktionaryApi
  require "open-uri"

  def self.get_info(chosen_word)
    t1 = Time.now

    endpoint = "https://en.wiktionary.org/api/rest_v1/page/html/#{chosen_word}"

    query_page = Nokogiri::HTML(URI.open(endpoint))

    # The english language page links to all the other languages.
    # It needs a separate case to grab its info.

    # Some etymology texts are located differently than others.
    # query_page.css("[id^='Etymology']")[0].next_element.next_element.next_element.text
    # vs
    # query_page.css("[id^='Etymology']")[0].next_element.next_element.text
    curr_ety_element = query_page.css("[id^='Etymology']")[0]

    while !curr_ety_element.next_element.nil?
      if curr_ety_element.name == "p"
        break
      else
        curr_ety_element = curr_ety_element.next_element
      end
    end

    etymology_english = curr_ety_element.text

    # The translations table that is needed can be in 1 of 3 places.
    # 1 is on the same page.
    # 2 is /translations § Noun
    # 3 is /translations#Noun
    # If it has either of the 2 links, it is on another page.
    # There are two different formats of the link that are needed to get to that other page.
    # see which of the two link styles is used on this page

    # path1 = query_page.xpath('//a[contains(text(), "/translations § Noun")]')
    # # below with space 160 between § Noun
    # path2 = query_page.xpath("//a[contains(text(), \"/translations §#{160.chr('UTF-8')}Noun\")]")
    # path3 = query_page.xpath('//a[contains(text(), "/translations#Noun")]')

    query_page.xpath("//a[contains(text(), #{str1})]")
    query_page.replace(/#{32.chr("UTF-8")}/, " ")

    str1 = "#{chosen_word}/translations §#{32.chr("UTF-8")}Noun"
    path1 = query_page.css('a:contains("/translations §")')[0].text
    # => "iron/translations § Noun"

    query_page.css('a:contains("/translations §")')[0]["href"]
    # => "./iron/translations#Noun"

    # does not work
    path1expand = query_page.css('a:contains("/translations § Noun")')[0].text

    str2 = "#{chosen_word}/translations §#{160.chr("UTF-8")}Noun"
    path2 = query_page.css("a:contains")

    layout_path = nil
    if path1.length > 0
      layout_path = path1[0]["href"]
    end
    if path2.length > 0
      layout_path = path2[0]["href"]
    end
    if path3.length > 0
      layout_path = path3[0]["href"]
    end
    if path4.length > 0
      layout_path = path4[0]["href"]
    end

    if layout_path.nil?
      # translations_page = "https://en.wiktionary.org/wiki/#{chosen_word}/translations#Noun"
      translations_page = "https://en.wiktionary.org/wiki/#{chosen_word}#Translations"
      translations_page_parsed = Nokogiri::HTML(URI.open(URI.parse(translations_page)))
    else
      # translations_page = "https://en.wiktionary.org/#{layout_path}#Noun"
      translations_page = "https://en.wiktionary.org/#{layout_path}"
      translations_page_parsed = Nokogiri::HTML(URI.open(translations_page))
    end

    if chosen_word == "lead"
      etymology_english = query_page.css("[id^='Etymology_1']")[0].parent.next_element.text
      page = Nokogiri::HTML(URI.open("https://en.wiktionary.org/wiki/lead/translations#Etymology_1"))
    end

    yellow_translations_table = translations_page_parsed.css("td.translations-cell")[0].children.children

    all_li_array = []
    yellow_translations_table.each do |list_item|
      if list_item.to_s != "\n"
        all_li_array << list_item
      end
    end

    # NEED TO FIND for word: definition
    definition = translations_page_parsed.css("table.translations")[0].attributes["data-gloss"].value

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

      if language_name == "Swedish"
        binding.break
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
        # li.css("span").text.gsub(/\((♂♀)\)/, "").split("(")[0].strip
        # li.css("span").text.gsub(/\((♂♀)\)/, "").split("(")[0].gsub(/\W/,"")
      else
        translation = nil
      end

      #5 find romanization

      # if !li.css("span.tr.Latn")[0].nil?
      if !li.css("span.Latn")[0]&.text.nil?
        romanization = li.css("span.Latn")[0].text
      else
        romanization = translation
      end

      #6 find full_link_eng

      if !li.css("a")[0].nil? && li.css("a")[0]&.attributes["href"]&.value && li.css("a")[0]&.attributes["href"].value.ascii_only?
        short_link_eng = URI.parse(li.css("a")[0]&.attributes["href"].value).path
      else
        short_link_eng = nil
      end
      # URI.parse(li.css("a")[0]&.attributes["href"].value).path.gsub!(/å/, 'a')

      # => "/wiki/goud#Afrikaans" || nil

      if !short_link_eng.nil? && short_link_eng.ascii_only?
        full_link_eng = "https://en.wiktionary.org" << short_link_eng
        if language_name.include?("'") || language_name.include?("(")
          etymology_page = nil
        elsif full_link_eng.ascii_only? && !full_link_eng.include?("&action=edit")
          etymology_page = Nokogiri::HTML(URI.open(full_link_eng))
        else
          etymology_page = nil
        end
      end

      if !short_link_eng.ascii_only?
        error_hash = {}
        error_hash[language_name] = "non-ascii char"
        errors_ar << error_hash
      end

      if language_name == "Norwegian" && translation.ascii_only?
        full_link_eng = "https://en.wiktionary.org/wiki/#{translation}#Norwegian_Bokmal"
        etymology_page = Nokogiri::HTML(URI.open(full_link_eng))
      end

      #=> "https://en.wiktionary.org/wiki/goud#Afrikaans" || nil

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

      # if the page exists, and the page has the language on it, and there is an etymology element
      if !etymology_page.nil? && etymology_page.css("[id=#{language_name_span_id}]").length > 0 && (etymology_page.css("[id^='Etymology']").length > 0 || etymology_page.css("[id^='Etymology_1']").length > 0)

        # current_element is now the H3 with text and ID "Etymology"
        current_element = etymology_page.css("[id=#{language_name_span_id}]")[0]&.parent.next_element

        # If there is a current element, I need the current element to not be a h2, because that is my stop sign.
        # Some pages have another h2 beneath with an etymology from another lang. This is not right. This way, the next etymology overwrites the first one.
        # NULL goes in the DB, which is right, but an incorrect value.

        #  begin the while loop down.
        while !current_element.nil? && current_element.name != "h2"

          # if there is an etymology H3 that has info, do the while loop
          if current_element.name == "h3" && current_element.text.include?("Etymology") && !current_element.next_element.text.include?("(This etymology is missing or incomplete.")

            # usually current_element is a H3 with id=etymology, then the next p tag that has the etymology.
            # But not always. This gets the h3 tag, and loops until it finds the p tag, THEN takes the value.

            # Loop until the p is found. This ignores random divs that are sometimes there.

            # while !current_element.nil? && current_element.name != "p" && current_element.name != "div"
            while !current_element.nil? && current_element.name != "p"
              current_element = current_element.next_element
            end
            # the loop is over. This is the p. Get .text.strip and break the loop
            etymology = current_element.text.strip
            break
          end

          # if there is not the etymology H3 that has info, keep incrementing
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
        puts "Errors= #{errors}"
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
    puts "path1 = #{path1}"
    puts "path2 = #{path2}"
    puts "path3 = #{path3}"
    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
  end
end