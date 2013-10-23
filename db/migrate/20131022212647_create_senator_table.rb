class CreateSenatorTable < ActiveRecord::Migration
  def change
    create_table :senators do |t|
      t.string :last_name, null: false
      t.string :bill_1 
      t.string :bill_2 
      t.string :bill_3
      t.string :bill_4 
    end
  end
end
