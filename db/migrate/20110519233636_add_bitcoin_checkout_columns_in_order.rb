class AddGoogleCheckoutColumnsInOrder < ActiveRecord::Migration
  def change
    add_column :orders, :financial_order_state, :string
    add_column :orders, :google_order_number,   :string
    add_column :orders, :buyer_id,              :string
    add_column :orders, :gateway,               :string
  end
end
