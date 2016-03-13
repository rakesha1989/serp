class RemoveColumnFromPurchaseOrders < ActiveRecord::Migration
  def change
    remove_column :purchase_orders, :product_id, :integer
  end
end
