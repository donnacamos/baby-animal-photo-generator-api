class PhotoSerializer
  include FastJsonapi::ObjectSerializer
  attributes :image_url, :artist_name 
  has_many :comments 
  
  # custom attribute
  attribute :photo_with_comments do |photo| 
    photo.comments  
  end 
end
