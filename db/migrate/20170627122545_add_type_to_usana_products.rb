class AddTypeToUsanaProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :usana_products, :type, :string
  end
end
