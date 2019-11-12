class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name 
  has_many :photos 
end
