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

post '/sign_in' do
  @user = User.where(:username => params[:unsername]).first
  if @user
    if @user.password == params[:password]
      redirect '/users/' + @user.id.to_s
    end
  end
end

post '/users/sign_up' do
  User.create[params]
  @users = User.all
  redirect '/home'
end


get '/followers' do
	haml :followers
end

get '/following' do
	haml :following
end

get '/users/:id' do
  @user = User.find(params[:id])
  haml :profile
end