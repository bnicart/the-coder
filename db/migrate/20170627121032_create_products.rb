class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :points
      t.decimal :dist_price
      t.decimal :cust_price
      t.string :quantity
      t.string :image
      t.string :supplement_facts
      t.text :description
      t.string :short_description
      t.string :how_to_use
      t.text :trivia
      t.text :who_can_benefit
      t.text :additional_info
      t.string :fda_link
      t.timestamps
    end
  end
end
