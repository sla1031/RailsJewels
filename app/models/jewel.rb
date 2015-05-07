class Jewel < ActiveRecord::Base
  belongs_to :Collection
  validates :name, presence: true, length: { maximum: 200 }, uniqueness: true
  validates :description, presence: true, length: {maximum: 200}
  VALID_PRICE_REGEX = /\A(([1-9]+\.?)|(\d+\.\d{2}))\z/
  validates :price, presence: true, format: {with: VALID_PRICE_REGEX}
  
  def available
     if stock > 0
       return true
      else
        return false
      end
   end
  
  
  
   
   
   
   
end
