class ShippingDetail < ApplicationRecord
    belongs_to :order
validates :address, presence:true
validates :city, presence:true
validates :state, presence:true
validates :shipped_at, presence:true   

default_scope { order(created_at: :desc) }
end
