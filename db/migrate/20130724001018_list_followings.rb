class ListFollowings < ActiveRecord::Migration
  def up
    create_table :list_followings do |t|
      t.integer :playlist_id
      t.integer :user_playlist_id
      t.integer :user_id
  end
end


  def down
    drop_table :list_followings
  end
end
