class RemoveTypeFromUsanaProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :usana_products, :type
  end
end
