require ('sinatra')
require ('sinatra/reloader')
also_reload ('lib/**/*.rb')
require ('./lib/parcels.rb')
require ('pry')

get ("/") do

  erb (:index)

end
get ("/box") do

  user_length = params.fetch("length").to_i
  user_width = params.fetch("width").to_i
  user_height = params.fetch("height").to_i
  user_weight = params.fetch("weight").to_i
  user_speed = params.fetch("speed")
  box = Parcel.new(user_length,user_width,user_height,user_weight)
  @cost = box.cost_to_ship(user_speed)
  erb (:output)

end
