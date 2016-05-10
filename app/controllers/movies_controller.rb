class MoviesController < ApplicationController
  before_filter :set_category

  def index
    @movies = @category.movies

    respond_to do |format|
      format.html
      format.json { render json: { category: @category, movies: @movies } }
    end

  end


  protected

  def set_category
    @category = Category.find(params[:category_id])
  end
end
