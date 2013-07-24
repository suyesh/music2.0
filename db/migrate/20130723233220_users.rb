class Users < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :username
      t.string :password
      t.integer :playlist_id
      t.integer :song_id
      t.integer :user_playlist_id
  end
end

  def down
    drop_table :users
  end
end
