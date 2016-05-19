class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.integer :user_id, {null: false}
      t.integer :pokemon_id, {null: false}
      t.string :results, {null: false}

      t.timestamps null: false
    end
  end
end
