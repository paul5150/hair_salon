require('sinatra')
require('sinatra/reloader')
require('./lib/clients')
also_reload('lib/**/*.rb')
require('./lib/stylists')
require('pg')


DB = PG.connect({:dbname => "hair_salon"})

get("/") do
  erb(:index)
end

get("/clients") do
  erb(:clients)
end

get("/stylists") do
  erb(:stylists)
end
