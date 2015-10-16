class PlacesController < ApplicationController
    before_filter :authenticate_user!, only: [:new, :create]
    
    def index
        @places = Place.paginate(:page => params[:page], :per_page => 5)
    end
    
    def new
        @place = Place.new
    end
    
    def show
        @place = Place.find(params[:id])
    end
    
    def create
        current_user.places.create(place_params)
        redirect_to root_path
    end
    
    def edit_place
    end
    
    private
    
    def place_params
        params.require(:place).permit(:name, :description, :address)
    end
end
