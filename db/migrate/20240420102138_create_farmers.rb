class CreateFarmers < ActiveRecord::Migration[7.1]
  def change
    create_table :farmers do |t|
      t.string :name
      t.string :code
      t.string :nida
      t.references :village, null: false, foreign_key: true
      t.references :parish, null: false, foreign_key: true
      t.string :phone

      t.timestamps
    end
  end
end
