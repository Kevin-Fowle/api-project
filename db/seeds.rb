# include HTTParty
require 'json'
require 'httparty'
# (1..151).each do |n|
#   poke_data = HTTParty.get("http://pokeapi.co/api/v1/pokemon/#{n}")
#   poke_data.to_s
#   Pokemon.create do |pk|
#     pk.name = poke_data['name']
#     pk.type = poke_data['types'].map{|t| t['name'].to_sym}.first
#   end
# end


(1..151).each do |n|
  httparty_data = HTTParty.get("http://pokeapi.co/api/v1/pokemon/#{n}")
  data = JSON.parse(httparty_data.to_json)
  exp = data["exp"]
  if exp == nil
    exp = 100
  elsif exp == []
    exp = 100
  end
  Pokemon.create(name: data['sprites'].first['name'], property: data['types'].last['name'], exp: exp)
end

