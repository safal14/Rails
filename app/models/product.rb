class Product < ApplicationRecord
    belongs_to :category
  has_many :order_items
  has_many :orders, through: :order_items
   before_validation :before_validation_
  def before_validation_
    puts "before_validation"
  end
  validates :Name, presence:true
  validates :Description, presence:true
  validates :price, presence:true

  scope :by_price_desc, -> { order(price: :desc) }
end
