class UsanaProduct < Product
  validates :item_code, :name, :points, :distributor_price, :customer_price, :quantity, presence: true
end
