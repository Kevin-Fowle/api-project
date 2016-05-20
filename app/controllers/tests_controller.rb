get '/tests' do
  erb :'tests/index'
end

post '/tests' do
  # get user aggression
  user_aggression = params[:aggression].to_i * 3
  # get a pokemon property
  pokemon_property = get_pokemon_property(params)
  # get a list of all pokemon for that property
  pokemon_property_list = get_pokemon_list(pokemon_property).order(:exp)
  # get a single pokemon object
  @pokemon = choose_pokemon(pokemon_property_list, user_aggression)
  # get their number in three digits
  @pokemon_number = @pokemon.generate_three_digit_num

  erb :'show'
end
