class CreatePokemons < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemons do |t|
      t.string :nombre
      t.text :descripcion
      t.string :imagen
      t.string :carta

      t.timestamps
    end
  end
end
