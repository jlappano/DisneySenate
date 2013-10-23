class CreateSenators < ActiveRecord::Migration
  def change
    create_table :senators do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :state, null: false
      t.string :phone, null: false
      t.string :website, null: false
      t.string :twitter_id, null: false
      t.text :img_url


      t.timestamps
    end
  end
end
