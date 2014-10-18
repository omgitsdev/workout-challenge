class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.references :user
      t.references :challenge

      t.timestamps
    end
  end
end
