class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :value
      t.integer :parent_category
      t.timestamps
    end
  end
end
