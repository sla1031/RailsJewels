class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :name
      t.references :Store, index: true

      t.timestamps null: false
    end
    add_foreign_key :collections, :Stores
  end
end
