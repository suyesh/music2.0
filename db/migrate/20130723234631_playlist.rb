class Playlists < ActiveRecord::Migration
  def up
  create_table :playlists do |t|
      t.string :listtitle
      t.integer :song_id
      t.integer :user_playlist_id
      t.integer :user_id
      t.interger :user_following_id
      t.integer :list_following_id
  end
end

  def down
    drop_table :playlists
  end
end
