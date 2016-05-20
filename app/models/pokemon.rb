class Pokemon < ActiveRecord::Base
  has_many :tests
  has_many :users, through: :tests

  def generate_three_digit_num(pokemon)
    if pokemon.id < 10
      return "00#{pokemon.id}"
    elsif pokemon.id < 100
      return "0#{pokemon.id}"
    else
      return pokemon.id
    end
  end
end
