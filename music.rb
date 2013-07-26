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
  if
    @user = User.where(:username => params[:username]).first
    if @user.password == params[:password]
      redirect '/profile' + @user.id.to_s
    else
      params[:alert] = "Your password was wrong."
      redirect '/'
    end
  else
    redirect '/'
  end
end

post '/users/sign_up' do
  User.create[params]
  @users = User.all
  redirect '/home'
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

get '/profile/:id' do
  @user = User.find(params[:id])
  haml :profile
end