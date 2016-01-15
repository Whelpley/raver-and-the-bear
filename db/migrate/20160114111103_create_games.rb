
class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|

      t.belongs_to :user

# Player's health score, reduced by Mauls
      t.integer :health
# Consecutive dances from the Bear
      t.integer :dances
# number of turns played
      t.integer :turn_count

      t.timestamps(null: false)
    end
  end

end
