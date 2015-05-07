class CreateJewels < ActiveRecord::Migration
  def change
    create_table :jewels do |t|
      t.string :name
      t.string :description
      t.references :Collection, index: true
      t.decimal :price, precision: 9, scale: 2
      t.integer :stock
      t.string :picture

      t.timestamps null: false
    end
    add_foreign_key :jewels, :Collections
  end
end
