class PhotosController < ApplicationController
    before_action :authenticate_user!
    def create
        #check if photo is valid, find a way to check if photo is valid, then render unprocessable entity if photo invalid
        @place = Place.find(params[:place_id])
        @place.photos.create(photo_params)
        redirect_to place_path(@place)
    end

private    
    def photo_params
        params.require(:photo).permit(:caption, :picture) 
    end
end
