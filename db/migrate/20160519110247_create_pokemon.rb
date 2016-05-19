class CreatePokemon < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string :name, {null: false}
      t.string :type, {null: false}

      t.timestamps null: false
    end
  end
end