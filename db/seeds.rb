# include HTTParty
require 'json'
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
  Pokemon.create(name: data['sprites'].first['name'], property: data['types'].first['name'])
end
# end
