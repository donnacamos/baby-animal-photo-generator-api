class Api::V1::CategoriesController < ApplicationController
    def index 
        categories = Category.all 
        render json: CategorySerializer.new(categories)
    end 

    def show 
        @category = Category.find(params[:id]) 
        render json: CategorySerializer.new(category)
    end 

    def create 
        @category = Category.create(category_params)

        render json: @category, status: 200 
    end

    def update 
        @category = Category.find(params[:id])
        @category.update(category_params)

        render json: @category, status: 200 
    end 

    def destroy 
        @category = Category.find(params[:id])
        @category.delete

        render json: {CategoryId: @category.id}
    end 

    private
    def category_params
        params.require(:category).permit(:name)
    end 
end
