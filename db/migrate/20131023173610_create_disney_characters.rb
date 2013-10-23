class CreateDisneyCharacters < ActiveRecord::Migration
  def change
    create_table :disney_characters do |t|
      t.string :character_name, null: false
      t.text :img_url, null: false
      t.string :quote
    end
  end
end
