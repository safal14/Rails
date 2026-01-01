class Order < ApplicationRecord
    belongs_to :customer
  has_many :order_items
  has_many :products, through: :order_items
  has_one :shipping_detail
  validates :total, presence:true
  validates :ordered_at, presence:true
  
end
