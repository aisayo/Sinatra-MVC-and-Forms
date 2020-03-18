require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do #root route
    erb :welcome
  end

  post '/signup' do 
    #name
    #password
    User.create(name: params[:username], password: params[:password])
    redirect "/goodbye"


  end 

  get "/goodbye" do #root route
    erb :goodbye
  end

  get "/users/:id" do 
    
  end 



end


