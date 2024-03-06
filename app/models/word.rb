class Word < ApplicationRecord
  has_one :translation, dependent: :destroy
  has_one :language, through: :translations

  validates :word_name, presence: true, uniqueness: true

  def self.all_word_names
    # Word.select("words.word_name, words.id").order("word_name ASC")
    Word.select("words.word_name, words.id").order(word_name: :asc)
  end

  def self.words_count
    Word.count
  end

  def self.find_word_definition(word)
    Word.where(word_name: word).pluck(:definition).first
  end
end
