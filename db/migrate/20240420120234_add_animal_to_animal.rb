class AddAnimalToAnimal < ActiveRecord::Migration[7.1]
  def change
    add_column :animals, :name, :string
  end
end
