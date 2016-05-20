helpers do
  def get_pokemon_property(hash)
    result = ""
    if hash["president"] == "Trump"
      result = "fire"
    elsif hash["president"] == "Gore"
      result = "water"
    elsif hash["president"] == "Nader"
      result = "grass"
    elsif hash["imagination"].to_i >= 8
      result = "psychic"
    elsif hash["party"].to_i >= 8
      result = "electric"
    elsif hash["movie"] == "Romeo and Juliet"
      result = "poison"
    elsif hash["movie"] == "Game of Thrones"
      result = "dragon"
    elsif hash["realness"] == "the easter bunny"
      result = "fairy"
    elsif hash["realness"] == "the human centipad"
      result = "bug"
    elsif hash["personality"] == "fighting"
      result = "fighting"
    elsif hash["personality"] == "flight"
      result = "flying"
    end
    result
  end

  def get_pokemon_list(property)
    pokemon_list = Pokemon.where(property: property)
  end

  def choose_pokemon(pokemon_array, user_aggression)
    if user_aggression < pokemon_array[0].exp
      return pokemon_array[0]
    end

    count = 0
    pokemon_array.each do |pokemon_obj|
      if user_aggression < pokemon_obj.exp
        return pokemon_array[count-1]
      else
        count += 1
      end
    end
    return pokemon_array[-1]
  end
end
