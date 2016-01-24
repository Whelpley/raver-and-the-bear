class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title, :null => false
      t.string :artist
      # where the "oontz" goes
      t.string :beats

      t.timestamps(null: false)
    end

# Join table with Games
    create_table :games_tracks, id: false do |t|
      t.belongs_to :game, index: true
      t.belongs_to :track, index: true
    end
  end
end
