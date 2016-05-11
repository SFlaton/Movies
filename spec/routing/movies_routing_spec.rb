require "rails_helper"

RSpec.describe MoviesController, type: :routing do
  describe "GET /categories/category_id/movies" do
    let (:category) {FactoryGirl.create(:category)}
    let (:movie) {FactoryGirl.create(:movie)}

    it "should route to movies#index" do
      route = "/categories/#{category.to_param}/movies"
      expect(get route).to route_to "movies#index", category_id: category.to_param
    end

    it "should route to movies#show" do
        route = "/categories/#{category.to_param}/movies/#{movie.to_param}"
        expect(get route).to route_to( "movies#show", category_id: category.to_param, id: movie.to_param)
    end

    it "should route to movies#new" do
        route = "/categories/#{category.to_param}/movies/new"
        expect(get route).to route_to( "movies#new", category_id: category.to_param)
    end

    it "should route to movies#edit" do
        route = "categories/#{category.to_param}/movies/#{movie.to_param}/edit"
        expect(get route).to route_to( "movies#edit", category_id: category.to_param, id: movie.to_param)
    end
  end
end
