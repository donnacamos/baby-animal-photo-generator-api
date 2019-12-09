class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :photo_id, :body 
  belongs_to :photo 
end


