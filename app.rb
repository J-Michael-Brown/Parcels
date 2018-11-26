require ('sinatra')
require ('sinatra/reloader')
also_reload ('lib/**/*.rb')
require ('./lib/parcels.rb')
require ('pry')

get ("/") do
  @test= "i work."
  erb (:index)

end
