require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

get '/' do 
  erb :index  
end 

get '/new' do 
  erb :create_puppy
end 

post '/puppy' do 
  @name = params["name"]
  @breed = params["breed"]
  age = params["age"]
  @months_old = age.to_s
  puppy = Puppy.new(@name, @breed, @months_old)
  
  erb :display_puppy 
end 

end
