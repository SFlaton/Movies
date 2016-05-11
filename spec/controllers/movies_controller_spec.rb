require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  let(:category) {FactoryGirl.create(:category)}
  let(:movies) {FactoryGirl.create_list(:movie, 3, category: category)}
  let(:movie) {FactoryGirl.create(:movie, category: category)}

  describe "GET index" do
    it "assigns all movies to an instance var called @movies" do
      get :index, category_id: category.to_param
      expect(assigns(:movies)). to eq movies
    end


    it "assigns te category to an instance var called @category" do
      get :index, category_id: category.to_param
      expect(assigns(:category)).to eq category
    end

    describe "category scope" do
      before {FactoryGirl.create(:movie)}

      it "only assigns movies in the current category" do
        get :index, category_id: category.to_param
        expect(assigns(:movies)).to eq movies
      end
    end
  end

  describe "GET show" do
    it "assigns a movie to an instance var called @movie" do
      get :show, category_id: category.to_param, id: movie.to_param
      expect(assigns(:movie)).to eq movie
    end
  end

  describe "GET new" do
    it "assigns a new movie as @movie" do
      get :new, category_id: category.to_param
      expect(assigns(:movie)).to be_a_new(Movie)
    end
  end

  describe "POST create" do
    it "creates a new movie" do
      post :create, category_id: category.to_param
      expect(assigns(:movie)).to be_a(Movie)
    end
  end
end
