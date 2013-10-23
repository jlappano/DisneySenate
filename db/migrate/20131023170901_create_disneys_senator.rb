class CreateDisneysSenator < ActiveRecord::Migration
  def change
    create_table :disneys_senators do |t|
      t.integer :senator_id, null: false
      t.integer :disney_id, null: false
    end
  end
end
