class Api::V1::CommentsController < ApplicationController
    def index 
        comments = Comment.all 
        render json: comments  
    end 

    def show 
        comment = Comment.find(params[:id]) 
        render json: comment  
    end 

    def create 
        @comment = Comment.new(comment_params)
        if @comment.save 
            render json: @comment, status: 200 
        else 
            error_response = {
                error: @comment.errors.full_messages 
            }
            render json: error_response, status: :unprocessable_entity 
        end 
    end

    def update 
        @comment = Comment.find(params[:id])
        @comment.update(comment_params)

        render json: @comment, status: 200 
    end 

    def destroy 
        @comment = Comment.find(params[:id])
        @comment.delete

        render json: {CommentId: @comment.id}
    end 

    private
    def comment_params
        params.require(:comment).permit(:body, :photo_id)  
    end 
end
