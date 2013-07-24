class User < ActiveRecord::Base
  has_many :songs

  has_many :playlists

  has_many :user_playlists
  has_many :list_following, :through => :user_playlists

  has_many :user_followings
  has_many :user_followers, :through => :user_followings

   def full_name
    fname + " " + lname
  end
end

class Song < ActiveRecord::Base
  belongs_to :user
  belongs_to :playlist
end

class Playlist < ActiveRecord::Base
  has_many :songs

  has_many :user_playlists
  has_many :users, :through => :user_playlists

  belongs_to :user
end

class UserPlaylist < ActiveRecord::Base
  belongs_to :playlist
  belongs_to :user
end

class UserFollowing < ActiveRecord::Base
  has_many :users
end

class ListFollowing < ActiveRecord::Base
  has_many :users
  has_many :playlists

  belongs_to :user_playlists
end
