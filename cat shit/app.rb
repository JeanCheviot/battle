require 'sinatra'
require 'shotgun'

get '/' do
  "Oi oi saveloi!"
end

# get '/cat' do
#   @name = %w(Amigo Oscar Viking).sample
#   erb(:index)
# end

get '/cat-form' do
  p params
  erb :cat_form
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end

set :session_secret, 'super secret'
