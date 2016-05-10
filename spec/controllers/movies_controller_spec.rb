require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  let(:category) {FactoryGirl.create(:category)}
  let(:movies) {FactoryGirl.create_list(:movie, 3, category: category)}

  describe "GET index" do
    it "assigns all movies to an instance var called @movies" do
      get :index, category_id: category.to_param
      expect(assigns(:movies)). to eq movies
    end
  end

end
