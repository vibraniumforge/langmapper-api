class CreateWords < ActiveRecord::Migration[7.1]
  def change
    create_table :words do |t|
      t.string :word_name
      t.string :definition
      t.string :emoji
      t.string :category

      t.timestamps
    end
  end
end
