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
    @movie = Movie.new(movie_params)
    @movie.category = @category

    respond_to do |format|
      if @movie.save
        format.html {redirect_to [@category, @movie], notice: "a new movie was created"}
        format.json {render :show, status: :created, location: [@category, @movie]}
      else
        format.html {render :new}
        format.json {render json: @movie.errors}
      end
    end
  end

  def edit
    @movie = @category.movies.find(params[:id])
  end

  def update
    @movie = @category.movies.find(params[:id])

    respond_to do |format|
      if @movie.update(movie_params)
        format.html {redirect_to [@category, @movie], notice: "movie is updated"}
        format.json {render :show, status: :ok, location: [@category, @movie]}
      else
        format.html {render :edit}
        format.json {render json: @movie.errors}
      end
    end
  end

  def destroy
    @movie = @category.movies.find(params[:id])

    respond_to do |format|
      if @movie.destroy
        format.html {redirect_to @category, notice: "movie was destroyed"}
        format.json {head :no_content}
      else
        format.html {render :show}
        format.json {render json: @movie.errors}
      end
    end
  end

  protected

  def set_category
    @category = Category.find(params[:category_id])
  end

  def movie_params
    params.require(:movie).permit(:title, :description)
  end
end
