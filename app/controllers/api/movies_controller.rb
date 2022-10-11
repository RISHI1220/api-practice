class Api::MoviesController < ApplicationController
    def index
        render json: Movie.all
    end
    def create
        @movie=Movie.create(title: params[:title],producer: params[:producer])
        render json: Movie.all
    end
    def update
        @movie=Movie.find(params[:id])
        @movie.update(title: params[:title],producer: params[:producer])
        render json: Movie.all
    end
    def destroy
        Movie.destroy(params[:id])
        render json: Movie.all
    end
    def show
        @movie=Movie.find(params[:id])
        render json: @movie
    end
    # private
    # def movie_params
    #     params.permit(:title,:producer)
    # end
end