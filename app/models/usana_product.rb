class UsanaProduct < Product
  validates :name, :points, :distributor_price, :customer_price, :quantity, presence: true
end
