class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :mail
      t.string :password
      t.string :picture
      t.string :profile

      t.timestamps
    end
  end
end
