class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :null => false
      t.string :email, :null => false
      # For now, no password encryption!
      # add this soon!
      t.string :password, :null => false
      t.timestamps(null: false)
    end
    # I don't really know what this does
    add_index :users, :email, :unique => true
  end
end
