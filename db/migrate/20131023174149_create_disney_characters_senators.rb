class CreateDisneyCharactersSenators < ActiveRecord::Migration
  def change
    create_table :disney_characters_senators do |t|
      t.integer :senator_id, null: false
      t.integer :disney_character_id, null: false
    end
    reversible do |dir|
      dir.up do
        execute <<-SQL
          ALTER TABLE disney_characters_senators
          ADD CONSTRAINT fk_disney_characters
          FOREIGN KEY (disney_character_id)
          REFERENCES disney_characters(id),
          ADD CONSTRAINT fk_senators
          FOREIGN KEY (senator_id)
          REFERENCES senators(id)
        SQL
      end
    end
  end
end
