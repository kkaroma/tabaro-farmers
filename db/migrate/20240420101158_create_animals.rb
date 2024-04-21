class CreateAnimals < ActiveRecord::Migration[7.1]
  def change
    create_table :animals do |t|
      t.references :animal_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
