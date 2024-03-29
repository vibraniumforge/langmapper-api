class CreateLanguages < ActiveRecord::Migration[7.1]
  def change
    create_table :languages do |t|
      t.string :name
      t.string :abbreviation
      t.string :alphabet
      t.string :macrofamily
      t.string :family
      t.string :subfamily
      t.string :area1
      t.string :area2
      t.string :area3
      t.text :notes
      t.boolean :has_gender
      t.string :flag
      t.boolean :alive

      t.timestamps
    end
  end
end
