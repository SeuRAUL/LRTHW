require 'sinatra'

set :port, 8080
set :bind, '0.0.0.0'
set :static, true
set :public_folder, "static"
set :views, "views"
enable :sessions

get '/' do
  return 'Hello world'
end

get '/hello/' do
  erb :hello_form
end

post '/hello/' do
  greeting = params[:greeting] || "Hi There"
  name = params[:name] || "Nobody"
  
  erb :index, :locals => {'greeting' => greeting, 'name' => name }
end