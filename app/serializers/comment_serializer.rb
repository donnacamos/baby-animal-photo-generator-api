class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :body 
  belongs_to :photo 
end
