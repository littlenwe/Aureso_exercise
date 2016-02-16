class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :order_id
      t.string :name
      t.integer :qnt
      t.integer :value
      t.integer :category_id
      t.integer :subcategory
      t.integer :collection_id
      t.timestamps
    end
  end
end
