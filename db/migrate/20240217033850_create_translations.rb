class CreateTranslations < ActiveRecord::Migration[7.1]
  def change
    create_table :translations do |t|
      t.references :language, null: false, foreign_key: true
      t.references :word, null: false, foreign_key: true
      t.text :etymology
      t.string :gender
      t.string :link
      t.string :romanization
      t.string :translation

      t.timestamps
    end
  end
end
