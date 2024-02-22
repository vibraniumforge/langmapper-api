class CreateCaucasusTranslationMapService
  MapValues = [
    { name: "Abkhaz", abbreviation: "ab", id: "1", color: "e559db" },
    { name: "Adyghe", abbreviation: "ady", id: "2", color: "d9196d" },
    { name: "Cherkess", abbreviation: "", id: "3", color: "73012c" },
    { name: "Kabardian", abbreviation: "kbd", id: "4", color: "f0a0bc" },
    { name: "Georgian", abbreviation: "ka", id: "5", color: "fac03b" },
    { name: "Agul", abbreviation: "", id: "6", color: "ffd180" },
    { name: "Avar", abbreviation: "av", id: "7", color: "dcb590" },
    { name: "Dargin", abbreviation: "", id: "8", color: "f9c9b9" },
    { name: "Lak", abbreviation: "", id: "9", color: "ce6b76" },
    { name: "Lezgin", abbreviation: "", id: "10", color: "e55f5c" },
    { name: "Rutul", abbreviation: "", id: "11", color: "c51f13" },
    { name: "Tabasaran", abbreviation: "", id: "12", color: "f00054" },
    { name: "Tsakhur", abbreviation: "", id: "13", color: "913431" },
    { name: "Chechen", abbreviation: "", id: "14", color: "913431" },
    { name: "Ingush", abbreviation: "", id: "15", color: "ffef27" },
    { name: "Armenian", abbreviation: "hy", id: "16", color: "82a643" },
    { name: "Greek", abbreviation: "el", id: "17", color: "644c2d" },
    { name: "Kurd", abbreviation: "ku", id: "18", color: "346b34" },
    { name: "Ossetian", abbreviation: "os", id: "19", color: "d9d33e" },
    { name: "Talysh", abbreviation: "", id: "20", color: "d8a938" },
    { name: "Russian", abbreviation: "ru", id: "21", color: "e4e9ca" },
    { name: "Azeri", abbreviation: "az", id: "22", color: "d7e2ec" },
    { name: "Balkar", abbreviation: "", id: "23", color: "a12266" },
    { name: "Karachay", abbreviation: "", id: "24", color: "855289" },
    { name: "Kumyk", abbreviation: "", id: "25", color: "4995cd" },
    { name: "Nogay", abbreviation: "", id: "26", color: "63d1ff" },
    { name: "Turkmen", abbreviation: "tr", id: "27", color: "394652" },
    { name: "Kalmyk", abbreviation: "xal", id: "28", color: "d999bc" },
  ]

  def self.create_caucasus_translation_map(area, word)
    t1 = Time.now
    # get the relevant info from the DB
    search_results = Translation.find_all_translations_by_area(area, word)

    # result after processing, this is what gets placed on the map
    # => result_array = [[nl, water], ["uk", "мідь - midʹ"]... ]
    result_array = []

    # all the current langs. Used to find & delete missing "$__" from the map
    # => ["ar", "mt", ...]
    current_languages = []

    # open the selected blank map, read it, and get the $langs from it.
    # Not hardcoded like before in My_europe_svg.
    map_file = File.open("#{Rails.root.to_s}/public/Caucasus-ethnic_en.svg")
    map_code = map_file.read
    map_languages = map_code.scan(/[$][a-z]{2,3}/mi).sort.map { |x| x.gsub(/[$]/i, "") }

    # clean the result data for appending
    search_results.each do |result|

      # skip languages that ARE in the results, but NOT on this map
      if !map_languages.include?(result.abbreviation)
        next
      end

      # handle romanization of other scripts
      result_array << romanization_helper(result)[0].to_h
      current_languages << result.abbreviation
    end

    # languages that ARE on the map, but NOT in the reults
    unused_map_languages = map_languages - current_languages

    # change the "$__" to "" to hide unused/missing lang info.
    for unused_language in unused_map_languages
      map_code = map_code.sub("$" + unused_language, "")
    end

    # change the "$__" to the result translation
    for result in result_array
      map_code = map_code.sub("$" + result[:abbreviation], result[:translation])
    end

    map_file.close

    search_results_lang_array = search_results.map { |lang| lang.abbreviation }.sort

    unused_search_results = (map_languages - search_results_lang_array).sort
    unused_map_languages2 = (search_results_lang_array - map_languages).sort

    unused_search_results = (map_languages - search_results_lang_array).sort

    puts "\n"
    puts "#{search_results.length} matching languages in the DB for the word: #{word.upcase} in: #{area}"
    puts "#{map_languages.length} languages on the map"
    puts "#{unused_map_languages.length} unused languages(on map, but not in DB or no etymology)"
    print unused_map_languages
    puts "\n"
    puts "#{unused_search_results.length} unused languages(on map, but not in DB)"
    print unused_search_results
    puts "\n"
    puts "#{unused_map_languages2.length} unused search languages(in search results, but not on map)"
    if unused_map_languages2.length > 0
      print unused_map_languages2
    end
    puts "\n"
    puts "#{current_languages.length} languages in DB and map"
    print current_languages
    # puts "#{(My_europe_svg.length - map_languages.length)} languages missing between My_europe_svg and map_languages:"
    # puts "They are: #{My_europe_svg - map_languages} languages"
    puts "\n"
    puts "computed in #{Time.now - t1} seconds."
    puts "\n"

    send_caucasus_map(map_code)
  end

  def self.send_caucasus_map(map_code)
    FileUtils.copy_entry("public/Caucasus-ethnic_en.svg", "public/Caucasus-ethnic_en_copy.svg", preserve = false, dereference = false, remove_destination = true)
    the_new_map = open("public/Caucasus-ethnic_en_copy.svg", "w")
    the_new_map.write(map_code)
    # the_new_map.close
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

  # def self.create_logs
  #   puts "\n"
  #   puts "#{search_results.length} matching languages in the DB for the word: #{word.upcase} in: #{area}"
  #   puts "#{map_languages.length} languages on the map"
  #   puts "#{unused_map_languages.length} unused languages(on map, but not in DB or no etymology)"
  #   print unused_map_languages
  #   puts "\n"
  #   puts "#{unused_search_results.length} unused languages(on map, but not in DB)"
  #   print unused_search_results
  #   puts "\n"
  #   puts "#{unused_map_languages2.length} unused search languages(in search results, but not on map)"
  #   if unused_map_languages2.length > 0
  #     print unused_map_languages2
  #   end
  #   puts "\n"
  #   puts "#{current_languages.length} languages in DB and map"
  #   puts "#{etymology_array.length} <== unique etymologies"
  #   # puts "#{(My_europe_svg.length - map_languages.length)} languages missing between My_europe_svg and map_languages:"
  #   # puts "They are: #{My_europe_svg - map_languages} languages"
  #   puts "\n"
  #   puts "computed in #{Time.now - t1} seconds."
  #   puts "\n"
  # end
end
