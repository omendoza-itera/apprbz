class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :description
      t.string :picture
      t.decimal :cost
      t.references :company

      t.timestamps
    end
    add_index :dishes, :company_id
  end
end
