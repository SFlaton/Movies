require "rails_helper"

RSpec.describe MoviesController, type: :routing do
  describe "GET /categories/category_id/movies" do
    let (:category) {FactoryGirl.create(:category)}
    let (:movie) {FactoryGirl.create(:movie)}

    it "should route to movies#index" do
      route = "/categories/#{category.to_param}/movies"
      expect(get route).to route_to "movies#index", category_id: category.to_param
    end
  end

  it "should route to movies#show" do
      route = "/categories/1/movies/1"
      expect(get route).to route_to "movies#show", category_id: "1", id:"1"
  end
end
