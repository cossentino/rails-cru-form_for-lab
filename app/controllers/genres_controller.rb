class GenresController < ApplicationController

    def new
    end


    def edit
        @genre = Genre.find(params[:id])
    end
  
    def show
        @genre = Genre.find(params[:id])
    end

    def create
        genre = Genre.create(helpers.strong_params(:genre, :name))
        redirect_to genre_path(genre)
    end

    def update
        genre = Genre.find(params[:id])
        genre.update(helpers.strong_params(:genre, :name))
        redirect_to genre_path(genre)
    end


end
