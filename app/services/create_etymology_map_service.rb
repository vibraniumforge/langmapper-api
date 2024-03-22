class CreateEtymologyMapService
  BaseEuropeMapInfo = [
    { name: "Abkhaz", abbreviation: "ab", color: "168d4f" },
    { name: "Arabic", abbreviation: "ar", color: "ffffb1" },
    { name: "Azerbaijani", abbreviation: "az", color: "d45500" },
    { name: "Belarussian", abbreviation: "be", color: "b5ff64" },
    { name: "Bulgarian", abbreviation: "bg", color: "36ae22" },
    { name: "Breton", abbreviation: "br", color: "00ff00" },
    { name: "Catalan", abbreviation: "ca", color: "00ffff" },
    { name: "Corsican", abbreviation: "co", color: "c0003c" },
    { name: "Czech", abbreviation: "cs", color: "00cb60" },
    { name: "Welsh", abbreviation: "cy", color: "00b23e" },
    { name: "Danish", abbreviation: "da", color: "ff5555" },
    { name: "German", abbreviation: "de", color: "d09999" },
    { name: "Greek", abbreviation: "el", color: "ffff00" },
    { name: "English", abbreviation: "en", color: "ffaaaa" },
    { name: "Spanish", abbreviation: "es", color: "acd8ed" },
    { name: "Estonian", abbreviation: "et", color: "b7c8be" },
    { name: "Basque", abbreviation: "eu", color: "ffd42a" },
    { name: "Finnish", abbreviation: "fi", color: "6f997a" },
    { name: "Faroese", abbreviation: "fo", color: "ff0000" },
    { name: "French", abbreviation: "fr", color: "53bbb5" },
    { name: "West Frisian", abbreviation: "fy", color: "d66c74" },
    { name: "Irish", abbreviation: "ga", color: "169b62" },
    { name: "Gagauz", abbreviation: "gag", color: "c837ab" },
    { name: "Scottish Gaelic", abbreviation: "gd", color: "ff7f2a" },
    { name: "Galician", abbreviation: "gl", color: "00d4aa" },
    { name: "Hungarian", abbreviation: "hu", color: "ac9d93" },
    { name: "Armenian", abbreviation: "hy", color: "008080" },
    { name: "Icelandic", abbreviation: "is", color: "f19076" },
    { name: "Italian", abbreviation: "it", color: "7bafe0" },
    { name: "Georgian", abbreviation: "ka", color: "f4e3d7" },
    { name: "Kazakh", abbreviation: "kk", color: "deaa87" },
    { name: "Karelian", abbreviation: "krl", color: "93ac93" },
    { name: "Luxembourgish", abbreviation: "lb", color: "55ddff" },
    { name: "Ligurian", abbreviation: "lij", color: "f2003c" },
    { name: "Lithuanian", abbreviation: "lt", color: "e9afdd" },
    { name: "Latvian", abbreviation: "lv", color: "de87cd" },
    { name: "Macedonian", abbreviation: "mk", color: "71c837" },
    { name: "Maltese", abbreviation: "mt", color: "a0892c" },
    { name: "Neapolitan", abbreviation: "nap", color: "f5003c" },
    { name: "Dutch", abbreviation: "nl", color: "f4d7d7" },
    { name: "Norwegian", abbreviation: "no", color: "ff8080" },
    { name: "Occitan", abbreviation: "oc", color: "168d5f" },
    { name: "Ossetian", abbreviation: "os", color: "985fd3" },
    { name: "Polish", abbreviation: "pl", color: "7ecb60" },
    { name: "Piedmontese", abbreviation: "pms", color: "f2d53c" },
    { name: "Portuguese", abbreviation: "pt", color: "00d4d4" },
    { name: "Romansch", abbreviation: "rm", color: "008079" },
    { name: "Romanian", abbreviation: "ro", color: "aaccff" },
    { name: "Russian", abbreviation: "ru", color: "72ff00" },
    { name: "Sardinian", abbreviation: "sc", color: "c0ee3c" },
    { name: "Sicilian", abbreviation: "scn", color: "cc003c" },
    { name: "Scots", abbreviation: "sco", color: "168df0" },
    { name: "Northern Sami", abbreviation: "se", color: "cccccc" },
    { name: "Serbo-Croatian", abbreviation: "sh", color: "abc837" },
    { name: "Slovak", abbreviation: "sk", color: "42f460" },
    { name: "Slovene", abbreviation: "sl", color: "81c98d" },
    { name: "Albanian", abbreviation: "sq", color: "a0856c" },
    { name: "Swedish", abbreviation: "sv", color: "ffb380" },
    { name: "Turkish", abbreviation: "tk", color: "cc9e4c" },
    { name: "Tatar", abbreviation: "tt", color: "c7a25f" },
    { name: "Ukranian", abbreviation: "uk", color: "c1ff00" },
    { name: "Venetian", abbreviation: "vnc", color: "f28d3c" },
    { name: "Kalmyk", abbreviation: "xal", color: "d34d5f" },
    { name: "Manx", abbreviation: "gv", color: "00ff02" },
    { name: "Cornish", abbreviation: "kw", color: "00ff01" },
  ]

  BaseEuropeSmallMapInfo = [
    # { name: "Abkhaz", abbreviation: "ab", color: "168d4f" },
    { name: "Arabic", abbreviation: "ar", color: "ffffb1" },
    # { name: "Azerbaijani", abbreviation: "az", color: "d45500" },
    { name: "Belarussian", abbreviation: "be", color: "b5ff64" },
    { name: "Bulgarian", abbreviation: "bg", color: "36ae22" },
    { name: "Breton", abbreviation: "br", color: "00ff00" },
    { name: "Catalan", abbreviation: "ca", color: "00ffff" },
    { name: "Corsican", abbreviation: "co", color: "c0003c" },
    { name: "Czech", abbreviation: "cs", color: "00cb60" },
    { name: "Welsh", abbreviation: "cy", color: "00b23e" },
    { name: "Danish", abbreviation: "da", color: "ff5555" },
    { name: "German", abbreviation: "de", color: "d09999" },
    { name: "Greek", abbreviation: "el", color: "ffff00" },
    { name: "English", abbreviation: "en", color: "ffaaaa" },
    { name: "Spanish", abbreviation: "es", color: "acd8ed" },
    { name: "Estonian", abbreviation: "et", color: "b7c8be" },
    { name: "Basque", abbreviation: "eu", color: "ffd42a" },
    { name: "Finnish", abbreviation: "fi", color: "6f997a" },
    { name: "Faroese", abbreviation: "fo", color: "ff0000" },
    { name: "French", abbreviation: "fr", color: "53bbb5" },
    { name: "West Frisian", abbreviation: "fy", color: "d66c74" },
    { name: "Irish", abbreviation: "ga", color: "169b62" },
    { name: "Gagauz", abbreviation: "gag", color: "c837ab" },
    { name: "Scottish Gaelic", abbreviation: "gd", color: "ff7f2a" },
    { name: "Galician", abbreviation: "gl", color: "00d4aa" },
    { name: "Hungarian", abbreviation: "hu", color: "ac9d93" },
    # { name: "Armenian", abbreviation: "hy", color: "008080" },
    { name: "Icelandic", abbreviation: "is", color: "f19076" },
    { name: "Italian", abbreviation: "it", color: "7bafe0" },
    # { name: "Georgian", abbreviation: "ka", color: "f4e3d7" },
    # { name: "Kazakh", abbreviation: "kk", color: "deaa87" },
    { name: "Karelian", abbreviation: "krl", color: "93ac93" },
    { name: "Luxembourgish", abbreviation: "lb", color: "55ddff" },
    { name: "Ligurian", abbreviation: "lij", color: "f2003c" },
    { name: "Lithuanian", abbreviation: "lt", color: "e9afdd" },
    { name: "Latvian", abbreviation: "lv", color: "de87cd" },
    { name: "Macedonian", abbreviation: "mk", color: "71c837" },
    { name: "Maltese", abbreviation: "mt", color: "a0892c" },
    { name: "Neapolitan", abbreviation: "nap", color: "f5003c" },
    { name: "Dutch", abbreviation: "nl", color: "f4d7d7" },
    { name: "Norwegian", abbreviation: "no", color: "ff8080" },
    { name: "Occitan", abbreviation: "oc", color: "168d5f" },
    # { name: "Ossetian", abbreviation: "os", color: "985fd3" },
    { name: "Polish", abbreviation: "pl", color: "7ecb60" },
    { name: "Piedmontese", abbreviation: "pms", color: "f2d53c" },
    { name: "Portuguese", abbreviation: "pt", color: "00d4d4" },
    { name: "Romansch", abbreviation: "rm", color: "008079" },
    { name: "Romanian", abbreviation: "ro", color: "aaccff" },
    { name: "Russian", abbreviation: "ru", color: "72ff00" },
    { name: "Sardinian", abbreviation: "sc", color: "c0ee3c" },
    { name: "Sicilian", abbreviation: "scn", color: "cc003c" },
    { name: "Scots", abbreviation: "sco", color: "168df0" },
    { name: "Northern Sami", abbreviation: "se", color: "cccccc" },
    { name: "Serbo-Croatian", abbreviation: "sh", color: "abc837" },
    { name: "Slovak", abbreviation: "sk", color: "42f460" },
    { name: "Slovene", abbreviation: "sl", color: "81c98d" },
    { name: "Albanian", abbreviation: "sq", color: "a0856c" },
    { name: "Swedish", abbreviation: "sv", color: "ffb380" },
    { name: "Turkish", abbreviation: "tk", color: "cc9e4c" },
    # { name: "Tatar", abbreviation: "tt", color: "c7a25f" },
    { name: "Ukranian", abbreviation: "uk", color: "c1ff00" },
    { name: "Venetian", abbreviation: "vnc", color: "f28d3c" },
    # { name: "Kalmyk", abbreviation: "xal", color: "d34d5f" },
    { name: "Manx", abbreviation: "gv", color: "00ff02" },
    { name: "Cornish", abbreviation: "kw", color: "00ff01" },
  ]

  # This is what I will divide by.
  Families_list = ["Albanian", "Anatolian", "Armenian", "Ancient Greek", "Hellenic", "Latin", "Proto-Balto-Slavic", "Proto-Slavic", "Proto-Baltic", "Proto-Brythonic", "Proto-Celtic", "Proto-Germanic", "Proto-Indo-Iranian", "Proto-Tocharian", "Proto-Finnic", "Proto-Sami", "Proto-Ugric", "Proto-Basque", "Proto-Turkic", "Proto-Afro-Asiatic", "Semitic", "Arabic", "Proto-Kartvelian", "Proto-Northwest Caucasian", "Proto-Northeast Caucasian"]
  # "Proto-Italic",

  def self.create_etymology_map(area, word)
    t1 = Time.now

    # blank color for missing langs/etys.
    blank_color = "ffffff"

    # logic to switch by input area

    # The relevant translations for area and word from the DB.
    # search_results

    # Which local map the user chose
    # corresponding_map

    # The file location of that map
    # map_file

    case area
    when "Europe"
      search_results = Translation.find_all_translations_by_area_europe_map(area, word)
      corresponding_map = BaseEuropeMapInfo
      map_file = File.open("#{Rails.root.to_s}/public/my_europe_template.svg")
    when "Europe small"
      search_results = Translation.find_all_translations_by_area_europe_map_small(area, word)
      corresponding_map = BaseEuropeSmallMapInfo
      map_file = File.open("#{Rails.root.to_s}/public/my_europe_small.svg")
    when "Caucasus", "Middle East", "South Asia", "Middle East Bronze Age"
      puts "Add me"
    else
      puts "No match"
    end

    # new array of just the language abbreviations from the above search.
    search_results_lang_array = search_results.map { |result| result.abbreviation }.sort

    # new array of just the language abbreviations from the corresponding map info array.
    map_languages_array = corresponding_map.map { |lang| lang[:abbreviation] }

    # new array of just the colors from the corresponding map info array.
    europe_map_color_codes_array = corresponding_map.map { |lang| lang[:color] }

    # the array of final results
    result_array = []
    # => [
    #  {:abbreviation=>"ar", :translation=>"جَزَر - jazar", :index=>0, :color=>"ffffb1"},
    #  {:abbreviation=>"mt", :translation=>"zunnarija", :index=>1, :color=>"a0892c"},
    #  {:abbreviation=>"lt", :translation=>"morka", :index=>2, :color=>"e9afdd"},
    #  {:abbreviation=>"lv", :translation=>"burkāns", :index=>3, :color=>"de87cd"},
    #  {:abbreviation=>"ru", :translation=>"морко́вь - morkóvʹ", :index=>4, :color=>"72ff00"},
    #  {:abbreviation=>"uk", :translation=>"мо́рква - mórkva", :index=>4, :color=>"72ff00", :family=>"Proto-Slavic"},
    #  ...]

    # the array that etymologies are checked against to see if they are shared or not.
    etymology_array = []
    # => [
    # {:etymology=>"Borrowed from English copper.",
    # :languages=>["ga", "gd"],
    # :color=>"fd6d3c"},
    # :family=>"Proto-Celtic"}]
    # ...]

    languages_with_an_ety = []
    #  => ["ar", "mt", ...]

    array_counter = 0

    # loop over the map and find every language abbreviation on it.
    map_code = map_file.read
    scanned_map_languages = map_code.scan(/[$][a-z]{2,3}/mi).sort.map { |x| x.gsub(/[$]/i, "") }
    #  => ["ab", "ar", ...]

    # Matching Logic
    # loop over search_results
    # get a result
    # check if it is on the base map
    # check if it has an etymology
    # current_etymology_array and clean each individual etymology.
    # split the etymology by sentence, remove anything after first sentence
    # split first sentence on commas. then semicolons.
    # remove_words. strip.
    # this is now clean_etymology
    # loop over Families_list. try to match clean_etymology and one family from Families_list
    # get the families list. Match current_etymology_array[index] and family
    # if no matching_family, use the result.family
    # if no matching_etymology, use the result.etymology
    # get the index_in_ety_array of the matching etymology from etymology_array
    # build the etymology array
    # build the result array

    search_results.each do |result|

      # ignore search_results that are not on this corresponding map
      if !scanned_map_languages.include?(result.abbreviation)
        next
      end

      # ignore search_results entries with no etymology
      if result.etymology.nil? || result.etymology.length.zero?
        next
      end

      # Regex
      # anything in braces \[.*?\]
      # anything with a space, then braces \s\[.*?\]
      # sub any thing in parens \(.*?\)
      # anything with a space, then parens |\s\(.*?\)
      # anything with parens, then a space: \s\(.*?\)\s*
      # split on the space, comma/semicolon, space \s*[,;]\s*
      current_etymology_array = result.etymology.gsub(/\[.*?\]|\s\[.*?\]|\(.*?\)|\s\(.*?\)|\s\(.*?\)\s*/, "").split(".")[0].split(/\s*[,;]\s*/)

      matching_family = nil
      matching_etymology = nil
      family_matched_to_ety = false

      # Words that confuse the match
      remove_words = ["a", "an", "all", "already", "alternant", "alteration", "being", "borrowed", "borrowing", "both", "by", "change", "classical", "conflation", "derivative", "derived", "despite", "deviation", "diminutive", "early", "either", "ending", "eventually", "fact", "feminine", "form", "hypothetical", "in", "inherited", "is", "itself", "late", "later", "learned", "less", "likely", "literary", "masculine", "medieval", "metathesis", "modification", "of", "or", "origin", "plural", "probably", "prothesis", "reborrowing", "reformation", "regularised", "regularized", "root", "semi-learned", "shortened", "sonorized", "taken", "the", "through", "ultimately", "uncertain", "variant", "verner", "via", "voiced", "which", "with"]

      # Prefer "Latin" instead of "Vulgar Latin".
      # Account for "from Vulgar Latin "xe", from Latin "x" confusion.
      if current_etymology_array.length > 0
        num_latins = current_etymology_array.join(" ").split(" ").select { |word| word == "Latin" }.length
        has_vulgar_latin = current_etymology_array.join(" ").match?("Vulgar Latin")
        if num_latins > 1 && has_vulgar_latin
          current_etymology_array.each do |ety|
            ety.downcase.gsub!("from vulgar latin ", "")
            ety.gsub!("Vulgar Latin ", "")
          end
        end
      end

      # matching logic
      current_etymology_array.each do |etymology|
        # clean the current etymology, one item in the current_etymology_array
        if etymology.match?(160.chr("UTF-8"))
          etymology.gsub!(160.chr("UTF-8"), " ")
        end
        clean_etymology = etymology.strip.split(" ").delete_if { |word| remove_words.include?(word.downcase) }.join(" ")

        # loop over the families. Try to match wods in clean_etymology to a family name.
        Families_list.each do |family|
          if clean_etymology.downcase.include?("from #{family.downcase}") || clean_etymology.downcase.include?("From #{family.downcase}")
            matching_family = family
            matching_etymology = clean_etymology.slice(0, 1).capitalize + clean_etymology.strip().slice(1..-1)
            family_matched_to_ety = true
            break
          end
          break if family_matched_to_ety
        end # Families_list.each
      end # current_etymology_array.each

      # if !matching_family, it may be new. use the result.family
      if matching_family.nil?
        matching_family = result.family
      end

      # if !matching_etymology, it may be new. use the result.etymology
      if matching_etymology.nil?
        matching_etymology = current_etymology_array.first
      end

      # find the index of the current_etymology in etymology_array, if any
      index_in_ety_array = etymology_array.find_index do |item|
        (item && item[:etymology].include?(matching_etymology))
        # (item && item[:etymology].parameterize.include?(matching_etymology.parameterize))
      end

      # if result.etymology IS null/nil, append nil as the index and blank its color.
      # NOTHING goes into the etymology_array. because no ety to begin with
      if result.etymology.nil? || result.etymology == "Null"
        edited_result = romanization_helper(result)[0].to_h
        edited_result[:index] = nil
        edited_result[:color] = blank_color
        result_array << edited_result

        # if result.etymology IS a valid etymology, but it is NOT in the array, it will have nil as index_in_ety_array
        # push it in array with its own default color.
        # subsuquent matches will match to this color.
      elsif index_in_ety_array.nil?

        # set default color to missing. If it later is found, use found_color
        found_color = blank_color
        if map_languages_array.find_index(result[:abbreviation])
          found_color = europe_map_color_codes_array[map_languages_array.find_index(result[:abbreviation])]
        end

        # push the etymology, language, and color into the etymology_array
        # the_index = index_in_ety_array ? index_in_ety_array : 0
        etymology_array << { etymology: matching_etymology, languages: [result.abbreviation], color: found_color, family: matching_family }

        # push result into the result_array
        edited_result = romanization_helper(result)[0].to_h
        edited_result[:index] = array_counter
        edited_result[:color] = found_color
        # edited_result[:family] = matching_family
        result_array << edited_result

        # add result to current_langauges
        languages_with_an_ety << result.abbreviation
        array_counter += 1

        # there IS an etymology, and it IS in the etymology_array
      else
        # add this language to the etymology_array
        etymology_array[index_in_ety_array][:languages] << result.abbreviation
        # etymology_array[index_in_ety_array][:family] << matching_family

        # get the corresponding color
        found_color = etymology_array[index_in_ety_array][:color]

        # put the info into the result_array
        edited_result = romanization_helper(result)[0].to_h
        edited_result[:index] = index_in_ety_array
        edited_result[:color] = found_color
        edited_result[:family] = matching_family
        result_array << edited_result
        languages_with_an_ety << result.abbreviation
      end
    end  #search_results.each

    french_color = nil
    english_color = nil
    italian_color = nil
    if !result_array.select { |x| x[:abbreviation] == "it" }.length.zero?
      italian_color = result_array.select { |x| x[:abbreviation] == "it" }[0][:color]
    end
    if !result_array.select { |x| x[:abbreviation] == "en" }.length.zero?
      english_color = result_array.select { |x| x[:abbreviation] == "en" }[0][:color]
    end
    if !result_array.select { |x| x[:abbreviation] == "fr" }.length.zero?
      french_color = result_array.select { |x| x[:abbreviation] == "fr" }[0][:color]
    end
    # italian_color = result_array.select{|x| x[:abbreviation] == "it" } ? [0][:color]
    # english_color = result_array.select{|x| x[:abbreviation] == "en" }[0][:color]
    # french_color = result_array.select{|x| x[:abbreviation] == "fr" }&[0]&[:color]

    # remove unused langs $abc from map and color it blank
    # remove unused regional langs $abc and color it to larger lang (fr, eng, it)
    unused_map_languages = scanned_map_languages - languages_with_an_ety

    for unused_language in unused_map_languages

      # change the text to ""
      map_code = map_code.sub("$" + unused_language, "")

      # find the corresponding color
      color_from_map = europe_map_color_codes_array[map_languages_array.find_index(unused_language)]

      # change the color.
      if ["pms", "lij", "vnc", "nap", "scn", "sc"].include?(unused_language) && !italian_color.nil? && italian_color != blank_color
        map_code = map_code.gsub("#" + color_from_map, "#" + italian_color)
      elsif unused_language == "sco" && !english_color.nil? && english_color != blank_color
        map_code = map_code.gsub("#" + color_from_map, "#" + english_color)
      elsif ["oc", "co"].include?(unused_language) && !french_color.nil? && french_color != blank_color
        map_code = map_code.gsub("#" + color_from_map, "#" + french_color)
      else
        map_code = map_code.gsub("#" + color_from_map, "#" + blank_color)
      end
    end # unused_map_languages

    # Update the map text and color for exitsting etymologies
    for language in result_array

      # put the result text on the map. => [мідь - midʹ]
      map_code = map_code.sub("$" + language[:abbreviation], "#{language[:translation]}")

      # change the result color on the map
      color_from_map = blank_color
      if map_languages_array.include?(language[:abbreviation])
        color_from_map = europe_map_color_codes_array[map_languages_array.find_index(language[:abbreviation])]
      end
      map_code = map_code.gsub("#" + color_from_map, "#" + language[:color])
    end

    map_file.close

    puts "\n"
    pp etymology_array.sort { |a, b| a[:family] <=> b[:family] }

    # Languages scanned from map, but no translation in DB.
    unused_map_languages = (scanned_map_languages - search_results_lang_array).sort

    create_logs(word, area, search_results_lang_array,  scanned_map_languages, unused_map_languages, languages_with_an_ety, etymology_array, t1)
    send_map(map_code, map_file)
  end

  def self.send_map(map_code, map_file)
    map_file_basename_copy = File.basename(map_file, ".svg") + "_copy.svg"
    FileUtils.copy_entry("public/#{File.basename(map_file)}", "public/#{map_file_basename_copy}", preserve = false, dereference = false, remove_destination = true)
    the_new_map = open("public/#{map_file_basename_copy}", "w")
    the_new_map.write(map_code)
    the_new_map
    # send_file the_new_map, disposition: :inline
  end

  # Appends romanization if not the same as translation
  # example [nl, water], ["uk", "мідь - midʹ"]
  def self.romanization_helper(result)
    if result.translation == result.romanization
      [abbreviation: "#{result.abbreviation}", translation: "#{result.translation}"]
    else
      [abbreviation: "#{result.abbreviation}", translation: "#{result.translation} - #{result.romanization}"]
    end
  end

  def self.create_logs(word, area, search_results_lang_array, scanned_map_languages, unused_map_languages, languages_with_an_ety, etymology_array, t1)
    puts "\n"
    puts "#{scanned_map_languages.length} languages on the #{area} map."
    puts "#{search_results_lang_array.length} matching translations in the DB for the word: #{word.upcase} in the area: #{area.upcase}."
    puts "#{unused_map_languages.length} unused translations (on map, but no translation in DB)"
    print unused_map_languages
    puts "\n"
    puts "\n"

    puts "#{languages_with_an_ety.length} translations in the DB with an etymology."
    puts "#{search_results_lang_array.length - languages_with_an_ety.length} translations on the map, in the db, but no etymology:"
    print search_results_lang_array - languages_with_an_ety
    puts "\n"
    puts "\n"

    puts "#{etymology_array.length} <== unique etymologies"
    puts "\n"
    puts "computed in #{Time.now - t1} seconds."
    puts "\n"
  end
end
