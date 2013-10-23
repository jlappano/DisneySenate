class CreateDisneyCharactersSenators < ActiveRecord::Migration
  def change
    create_table :disney_characters_senators do |t|
      t.integer :senator_id, null: false
      t.integer :disney_character_id, null: false
    end
  end
end
