class OrderItem < ApplicationRecord
    belongs_to :product
  belongs_to :order
  validates :quantity, presence:true
  validates :unit_price, presence:true

  scope :high_quantity, -> { where("quantity > ?", 5) }
end
