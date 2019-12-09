class Photo < ApplicationRecord
    has_many :comments 
    
    accepts_nested_attributes_for :comments 

    scope :by_id, -> {order(id: :desc)} 
end
