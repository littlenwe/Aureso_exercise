class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :email
      t.float :total_amount_net
      t.float :shipping_costs
      t.string :payment_method
      t.integer :discount_value, :default => 0
      t.timestamps
    end
  end
end
