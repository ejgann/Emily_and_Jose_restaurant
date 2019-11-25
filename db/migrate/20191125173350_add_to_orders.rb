class AddToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :customer_id, :integer
    add_column :orders, :food_id, :integer 
  end
end
