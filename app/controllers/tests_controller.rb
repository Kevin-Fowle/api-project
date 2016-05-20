get '/tests' do
  erb :'tests/index'
end

post '/tests' do
  p params
  pokemon_hash = get_pokemon(params)
  p pokemon_hash
  # @get_pokemon = Pokemon.find_by(:property => pokemon_hash)
  # p @get_pokemon
  erb :'show'
end
