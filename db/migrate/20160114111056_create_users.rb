class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, :null => false
      t.string :name, :null => false
      t.string :password_hash, :null => false
      t.timestamps(null: false)
    end
    # this improves performance of searching the table
    add_index :users, :email, :unique => true
  end
end
