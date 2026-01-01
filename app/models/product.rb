class Product < ApplicationRecord
    belongs_to :category
  has_many :order_items
  has_many :orders, through: :order_items
  validates :Name, presence:true
  validates :Description, presence:true
  validates :price, presence:true
end
