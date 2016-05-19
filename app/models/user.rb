class User < ActiveRecord::Base
  has_many :tests
  has_many :pokemons, through: :tests
end
