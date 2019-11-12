class Api::V1::PhotosController < ApplicationController
    def index 
        photos = Photo.all 
        render json: PhotoSerializer.new(photos)
    end 

    def show 
        photo = Photo.find(params[:id]) 
        options = {
            include: [:category]
        }
        render json: PhotoSerializer.new(photo)
    end 

    def create 
        @photo = Photo.create(photo_params)

        render json: @photo, status: 200 
    end

    def update 
        @photo = Photo.find(params[:id])
        @photo.update(photo_params)

        render json: @photo, status: 200 
    end 

    def destroy 
        @photo = Photo.find(params[:id])
        @photo.delete

        render json: {photoId: @photo.id}
    end 

    private
    def photo_params
        params.require(:photo).permit(:image_url, :artist_name) 
    end 
end
