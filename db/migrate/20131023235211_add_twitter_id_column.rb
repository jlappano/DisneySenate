class AddTwitterIdColumn < ActiveRecord::Migration
  def change
    add_column :senators, :twitter_id, :string
  end
end
