class AddFieldNameToFarmers < ActiveRecord::Migration[7.1]
  def change
    add_column :farmers, :field_name, :string
    add_column :farmers, :crop, :integer
    add_column :farmers, :acre, :integer
    add_column :farmers, :tree, :integer
    add_column :farmers, :date_planted, :date
    add_column :farmers, :est_yield, :integer
    add_column :farmers, :last_used_chemical, :string
    add_column :farmers, :organic, :boolean

    add_column :farmers, :field_name2, :string
    add_column :farmers, :crop2, :integer
    add_column :farmers, :acre2, :integer
    add_column :farmers, :tree2, :integer
    add_column :farmers, :date_planted2, :date
    add_column :farmers, :est_yield2, :integer
    add_column :farmers, :last_used_chemical2, :string
    add_column :farmers, :organic2, :boolean

    add_column :farmers, :field_name3, :string
    add_column :farmers, :crop3, :integer
    add_column :farmers, :acre3, :integer
    add_column :farmers, :tree3, :integer
    add_column :farmers, :date_planted3, :date
    add_column :farmers, :est_yield3, :integer
    add_column :farmers, :last_used_chemical3, :string
    add_column :farmers, :organic3, :boolean
  end
end
