class UsersPlaylists < ActiveRecord::Migration
  def up
    create_table :user_playlists do |t|
      t.integer :song_id
      t.integer :user_id
      t.integer :list_following_id
  end
end

  def down
    drop_table :user_playlist
  end
end
