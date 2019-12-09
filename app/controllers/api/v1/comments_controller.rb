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
        @comment = Comment.create(comment_params)

        render json: @comment, status: 200 
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
        params.require(:comment).permit(:body) 
    end 
end
