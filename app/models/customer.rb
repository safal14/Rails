class Customer < ApplicationRecord
      has_many :orders
      validates :Address, presence:true
      validates :FirstName, presence:true
      validates :LastName, presence:true
      validates :phone, presence:true, uniqueness:true
end 
