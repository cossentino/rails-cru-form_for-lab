class SongsController < ApplicationController

    def new
    end

    def index
        @songs = Song.all
    end
  
    def edit
        @song = Song.find(params[:id])
    end
  
    def show
        @song = Song.find(params[:id])
    end

    def create
        song = Song.create(helpers.strong_params(:song, :name, :genre_id, :artist_id))
        redirect_to song_path(song)
    end

    def update
        song = Song.find(params[:id])
        song.update(helpers.strong_params(:song, :name, :genre_id, :artist_id))
        redirect_to song_path(song)
    end

end
