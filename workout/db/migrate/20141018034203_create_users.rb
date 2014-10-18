class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.belongs_to :group
      
      t.timestamps
    end
  end
end
