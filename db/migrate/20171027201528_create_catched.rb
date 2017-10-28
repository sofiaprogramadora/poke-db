class CreateCatched < ActiveRecord::Migration[5.1]
  def change
    create_table :catched do |t|
      t.references :pokemon, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :poke_level

      t.timestamps
    end
  end
end
