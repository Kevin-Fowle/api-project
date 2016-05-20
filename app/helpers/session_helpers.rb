helpers do
  def get_pokemon(hash)
    result = ""
    if hash["president"] == "Trump"
      result = "fire"
    elsif hash["president"] == "Gore"
      result = "water"
    elsif hash["president"] == "Nader"
      result = "grass"
    elsif hash["imagination"].to_i >= 8
      result = "psychic"
    elsif hash["parties"].to_i >= 8
      result = "electric"
    elsif hash["personality"] == "yes"
      result = "fighting"
    elsif hash["personality"] == "no"
      result = "flight"
    elsif hash["movie"] == "Romeo and Juliet"
      result = "poison"
    elsif hash["movie"] == "Game of Thrones"
      result = "dragon"
    elsif hash["realness"] == "the easter bunny"
      result = "fairy"
    elsif hash["realness"] == "the human centipad"
      result = "bug"
    end
    result
  end
end