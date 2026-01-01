class Customer < ApplicationRecord
      has_many :orders
   before_save :before_save
  after_save  :after_save
  def before_save
    puts "before_save"
  end

  def after_save
    puts "after_save"
  end
      validates :Address, presence:true
      validates :FirstName, presence:true
      validates :LastName, presence:true
      validates :phone, presence:true, uniqueness:true
      
      scope :by_name, -> { order(FirstName: :asc) }
end 
