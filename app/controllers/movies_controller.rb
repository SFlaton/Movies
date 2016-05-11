class MoviesController < ApplicationController
  before_filter :set_category


  def index
    @movies = @category.movies

  end

  def show
    @movie = @category.movies.find(params[:id])
  end

  def new
    @movie = Movie.new

  end

  def create
    @movie = Movie.new
    @movie.category = @category

    respond_to do |format|
      if @movie.save
        format.html {redirect_to @movie, notice: "a new movie was created"}
        format.json {render :show, status: :created, location: @movie}
      else
        format.html {render :new}
        format.json {render json: @movie.errors}
      end
    end
  end

  protected

  def set_category
    @category = Category.find(params[:category_id])
  end

  def movie_params
    params.require(:movie).permit(:title, :description, :id)
  end
end
