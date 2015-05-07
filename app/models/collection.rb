class Collection < ActiveRecord::Base
  has_many :jewels
  belongs_to :Store
 
  
  validates :name, presence: true, length: { maximum: 200 }, uniqueness: true
  
  

  
    
end
