# encoding: utf-8
class Translation < ApplicationRecord
  belongs_to :language
  belongs_to :word

  validates :translation, presence: true
  validates :link, presence: true

  # counter
  def self.translations_count
    Translation.count
  end

  # return flattened json for seeds
  def self.seeds
    Translation.all
  end

  # Find all translations of a WORD in ALL LANGUAGES
  def self.find_all_translations_by_word(word)
    word_id = Word.find_by("word_name = ?", word.downcase).id
    Translation.joins(:language).select("translations.*, languages.name, languages.macrofamily, languages.family").where(word_id: word_id).order(:name)
  end

  # all translations of a WORD in ALL LANGUAGES
  # GET the gender
  def self.find_all_translations_by_word_gender(word, macrofamily = "Indo-European")
    word_id = Word.find_by(word_name: word.downcase).id
    Translation.joins(:language).select("translations.*, languages.*, languages.id as language_id, translations.id as id").where("word_id = ? AND macrofamily = ?", word_id, macrofamily).order(:family)
  end

  # Translations that contain the query word inside the Translation etymology.
  def self.find_etymology_containing(query)
    Translation.joins(:language, :word).select("translations.*, languages.name, languages.macrofamily, words.word_name ").where("etymology LIKE :query", query: "%#{sanitize_sql_like(query)}%")
  end

  # all the translations of EVERY WORD in a MACROFAMILY
  def self.find_all_translations_by_macrofamily(macrofamily)
    Translation.joins(:language, :word).select("translations.*, languages.*, languages.id as language_id, translations.id as id, words.word_name as word_name").where("macrofamily = ?", macrofamily).order(:family)
  end

  # all the TRANSLATIONS from a specified LANGUAGE
  def self.find_all_translations_by_language(language)
    language_id = Language.find_by(name: language).id
    Translation.joins(:language, :word).select("translations.*, languages.macrofamily, languages.name, words.word_name").where("language_id = ?", language_id).order(:word_name)
  end

  # find all the translations of the word_name && are in area1 || area2 || area3.
  def self.find_all_translations_by_area(area, word_name)
    word_id = Word.find_by(word_name: word_name.downcase).id
    Translation.joins(:language, :word).select("translations.*, languages.*, languages.id as language_id, translations.id as id, words.word_name").where("area1 = ?", area).or(Translation.joins(:language, :word).select("translations.*, languages.*, languages.id as language_id, translations.id as id, words.word_name").where("area2 = ?", area)).or(Translation.joins(:language, :word).select("translations.*, languages.*, languages.id as language_id, translations.id as id, words.word_name").where("area3 = ?", area)).where("word_id = ?", word_id).order(:macrofamily, :family, :subfamily)
  end

  def self.find_all_translations_by_area_europe_map(area, word_name)
    my_europe_svg = ["ab", "ar", "az", "be", "bg", "br", "ca", "co", "cs", "cy", "da", "de", "el", "en", "es", "et", "eu", "fi", "fo", "fr", "fy", "ga", "gag", "gd", "gl", "hu", "hy", "is", "it", "ka", "kk", "krl", "lb", "lij", "lt", "lv", "mk", "mt", "nap", "nl", "no", "oc", "os", "pl", "pms", "pt", "rm", "ro", "ru", "sc", "scn", "sco", "se", "sh", "sk", "sl", "sq", "sv", "tk", "tt", "uk", "vnc", "xal", "gv", "kw"]
    word_id = Word.find_by(word_name: word_name.downcase).id
    Translation.joins(:language, :word).select("translations.*, languages.*, languages.id as language_id, translations.id as id, words.*").where("languages.abbreviation IN (?)", my_europe_svg).where("word_id = ?", word_id).order(:macrofamily, :family, :subfamily)
  end

  def self.find_all_translations_by_area_europe_map_small(area, word_name)
    my_europe_small_svg = [ "ar", "be", "bg", "br", "ca", "co", "cs", "cy", "da", "de", "el", "en", "es", "et", "eu", "fi", "fo", "fr", "fy", "ga", "gag", "gd", "gl", "hu", "is", "it", "krl", "lb", "lij", "lt", "lv", "mk", "mt", "nap", "nl", "no", "oc", "pl", "pms", "pt", "rm", "ro", "ru", "sc", "scn", "sco", "se", "sh", "sk", "sl", "sq", "sv", "tk", "uk", "vnc", "gv", "kw"]
    word_id = Word.find_by(word_name: word_name.downcase).id
    Translation.joins(:language, :word).select("translations.*, languages.*, languages.id as language_id, words.word_name").where("languages.abbreviation IN (?)", my_europe_small_svg).where("word_id = ?", word_id).order(:macrofamily, :family, :subfamily)
  end

  # Find a single translation by Word and Language
  def self.find_translation_by_word_and_language(word_id, language_id)
    Translation.joins(:language, :word).select("translations.*, languages.name, languages.macrofamily, words.word_name").where("translations.word_id = ?", word_id).where("translations.language_id = ?", language_id)
  end
end
