class Word < ApplicationRecord
  has_many :translations, dependent: :destroy
  has_many :languages, through: :translations

  validates :word_name, presence: true, uniqueness: true


  def self.words_count
    Word.count
  end

  def self.find_word_definition(word)
    Word.where(word_name: word).pluck(:definition).first
  end
end
