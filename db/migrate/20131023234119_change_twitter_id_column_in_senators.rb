class ChangeTwitterIdColumnInSenators < ActiveRecord::Migration
  def change
    remove_column :senators, :twitter_id
  end
end
