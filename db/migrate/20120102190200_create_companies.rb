class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :phone1
      t.string :phone2
      t.integer :zip
      t.string :email1
      t.string :email2
      t.string :website

      t.timestamps
    end
  end
end
