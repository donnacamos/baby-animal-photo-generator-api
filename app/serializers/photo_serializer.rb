class PhotoSerializer
  include FastJsonapi::ObjectSerializer
  attributes :image_url, :artist_name 
  belongs_to :category
end
