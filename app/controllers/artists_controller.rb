class ArtistsController < ApplicationController
    def new
    end
  
    def edit
        @artist = Artist.find(params[:id])
    end
  
    def show
        @artist = Artist.find(params[:id])
    end

    def create
        artist = Artist.create(helpers.strong_params(:artist, :name, :bio))
        redirect_to artist_path(artist)
    end

    def update
        artist = Artist.find(params[:id])
        artist.update(helpers.strong_params(:artist, :name, :bio))
        redirect_to artist_path(artist)
    end
end
