class CreateAnnualCrops < ActiveRecord::Migration[7.1]
  def change
    create_table :annual_crops do |t|
      t.string :annual_crop_field
      t.integer :anual_crop_acre
      t.string :annual_crop_this_year
      t.string :annual_crop_organic
      t.string :annual_crop_last_year
      t.boolean :annual_crop_last_year_organic
      t.string :annual_crop_two_years_ago
      t.boolean :annual_crop_two_years_ago_organic

      t.string :annual_crop_field2
      t.integer :anual_crop_acre2
      t.string :annual_crop_this_year2
      t.string :annual_crop_organic2
      t.string :annual_crop_last_year2
      t.boolean :annual_crop_last_year_organic2
      t.string :annual_crop_two_years_ago2
      t.boolean :annual_crop_two_years_ago_organic2

      t.string :annual_crop_field3
      t.integer :anual_crop_acre3
      t.string :annual_crop_this_year3
      t.string :annual_crop_organic3
      t.string :annual_crop_last_year3
      t.boolean :annual_crop_last_year_organic3
      t.string :annual_crop_two_years_ago3
      t.boolean :annual_crop_two_years_ago_organic3

      t.timestamps
    end
  end
end
