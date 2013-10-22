class AddVotesColumn < ActiveRecord::Migration
  def change
    add_column :senators, :votes, :string 
  end
end
