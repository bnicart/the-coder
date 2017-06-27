class AddItemCodeToUsanaProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :usana_products, :item_code, :string
  end
end
