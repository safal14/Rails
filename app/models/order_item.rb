class OrderItem < ApplicationRecord
    belongs_to :product
  belongs_to :order
  validates :quantity, presence:true
  validates :unit_price, presence:true
end
