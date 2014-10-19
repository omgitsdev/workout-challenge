class RemoveNameFromActivities < ActiveRecord::Migration
  def change
    remove_column :activities, :name
  end
end
