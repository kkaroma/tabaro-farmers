class CreatePermanentCrops < ActiveRecord::Migration[7.1]
  def change
    create_table :permanent_crops do |t|
      t.string :field_name
      t.references :crop, null: false, foreign_key: true
      t.integer :acres
      t.integer :number_of_trees
      t.date :date_planted
      t.date :estimated_yield
      t.string :last_chemical
      t.boolean :organic

      t.timestamps
    end
  end
end
