class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :name
      t.string :frequency
      t.integer :wager
      t.integer :duration
      t.belongs_to :group
      t.timestamps
    end
  end
end
