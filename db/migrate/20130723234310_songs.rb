class Songs < ActiveRecord::Migration
  def up
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.integer :playlist_id
      t.integer :user_id
      t.integer :user_playlist_id
  end
end

  def down
    drop_table :songs
  end
end
