class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :name
      t.string :discount_status
      t.timestamps
    end
  end
end
