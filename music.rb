require 'haml'
require 'rake'
require 'sinatra'

require 'sinatra/activerecord'
set :database, "sqlite3:///twitter_users_new.sqlite3"

require './models.rb'

get '/' do
	haml :landing
end

get '/home' do
	haml :home
end

get '/profile' do
	haml :profile
end

get '/followers' do
	haml :followers
end

get '/following' do
	haml :following
end