class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :nombre
      t.string :direccion
      t.integer :rating
      t.string :nombre_chef

      t.timestamps
    end
  end
end
