
class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|

      t.belongs_to :user
# Player's health score, reduced by Mauls
      t.integer :health, :default => 3
# Consecutive dances from the Bear
      t.integer :wiggles, :default => 0
# number of turns played
      t.integer :turn_count, :default => 0

      t.timestamps(null: false)
    end
  end

end
