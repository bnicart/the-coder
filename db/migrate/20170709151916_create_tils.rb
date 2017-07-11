class CreateTils < ActiveRecord::Migration[5.0]
  def change
    create_table :tils do |t|
      t.text :description
      t.timestamps
    end
  end
end
