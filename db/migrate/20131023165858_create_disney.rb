class CreateDisney < ActiveRecord::Migration
  def change
    create_table :disneys do |t|
      t.string :character_name, null: false
      t.text :img_url, null: false
      t.string :quote
    end
  end
end
