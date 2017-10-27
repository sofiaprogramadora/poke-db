class CreateAtrapados < ActiveRecord::Migration[5.1]
  def change
    create_table :atrapados do |t|
      t.references :pokemons, foreign_key: true
      t.references :users, foreign_key: true
      t.integer :poke_level

      t.timestamps
    end
  end
end
