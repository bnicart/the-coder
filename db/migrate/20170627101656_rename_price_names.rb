class RenamePriceNames < ActiveRecord::Migration[5.0]
  def change
    rename_column :usana_products, :dist_price, :distributor_price
    rename_column :usana_products, :cust_price, :customer_price
  end
end
