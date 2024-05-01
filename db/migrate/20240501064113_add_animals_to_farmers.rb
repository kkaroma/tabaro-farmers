class AddAnimalsToFarmers < ActiveRecord::Migration[7.1]
  def change
    add_column :farmers, :animal, :integer
    add_column :farmers, :animal_total, :integer
    add_column :farmers, :animal_organic, :boolean
    add_column :farmers, :animal_comment, :text

    add_column :farmers, :animal2, :integer
    add_column :farmers, :animal_total2, :integer
    add_column :farmers, :animal_organic2, :boolean
    add_column :farmers, :animal_comment2, :text

    add_column :farmers, :animal_animal3, :integer
    add_column :farmers, :animal_total3, :integer
    add_column :farmers, :animal_organic3, :boolean
    add_column :farmers, :animal_comment3, :text

    add_column :farmers, :animal_animal4, :integer
    add_column :farmers, :animal_total4, :integer
    add_column :farmers, :animal_organic4, :boolean
    add_column :farmers, :comment4, :text
  end
end
