class RemoveAnimalTypeIdFromAnimal < ActiveRecord::Migration[7.1]
  def change
    remove_column :animals, :animal_type_id
  end
end
