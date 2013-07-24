class UserFollowings < ActiveRecord::Migration
  def up
    create_table :user_followings do |t|
      t.integer :user_id
      t.integer :user_following_id
  end
end

  def down
    drop_table :user_followings
  end
end
