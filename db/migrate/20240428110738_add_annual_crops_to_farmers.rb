class AddAnnualCropsToFarmers < ActiveRecord::Migration[7.1]
  def change

    add_column :farmers, :annual_crop_field, :string
    add_column :farmers, :anual_crop_acre, :integer
    add_column :farmers, :annual_crop_this_year, :string
    add_column :farmers, :annual_crop_organic, :string
    add_column :farmers, :annual_crop_last_year, :string
    add_column :farmers, :annual_crop_last_year_organic, :boolean
    add_column :farmers, :annual_crop_two_years_ago, :string
    add_column :farmers, :annual_crop_two_years_ago_organic, :boolean

    add_column :farmers, :annual_crop_field2, :string
    add_column :farmers, :anual_crop_acre2, :integer
    add_column :farmers, :annual_crop_this_year2, :string
    add_column :farmers, :annual_crop_organic2, :string
    add_column :farmers, :annual_crop_last_year2, :string
    add_column :farmers, :annual_crop_last_year_organic2, :boolean
    add_column :farmers, :annual_crop_two_years_ago2, :string
    add_column :farmers, :annual_crop_two_years_ago_organic2, :boolean

    add_column :farmers, :annual_crop_field3, :string
    add_column :farmers, :anual_crop_acre3, :integer
    add_column :farmers, :annual_crop_this_year3, :string
    add_column :farmers, :annual_crop_organic3, :string
    add_column :farmers, :annual_crop_last_year3, :string
    add_column :farmers, :annual_crop_last_year_organic3, :boolean
    add_column :farmers, :annual_crop_two_years_ago3, :string
    add_column :farmers, :annual_crop_two_years_ago_organic3, :boolean
   

  end
end
