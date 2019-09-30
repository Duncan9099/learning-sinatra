require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "hello!"
end

get '/secret' do
  "This is a new route"
end

get '/cat' do
  @name = ['Amigo', 'Oscar', 'Viking'].sample
  erb(:index)
end
