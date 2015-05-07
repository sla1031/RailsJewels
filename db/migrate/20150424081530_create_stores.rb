class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :phone
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps null: false
    end
  end
end
