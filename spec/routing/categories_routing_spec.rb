require "rails_helper"

RSpec.describe CategoriesController, type: :routing do
  describe "GET /" do
    it "routes to categories#index" do
      expect(get: "/").to route_to("categories#index")
    end

    it "routes to categories#show" do
      expect(:get => "/categories/1"). route_to("categories#show")
    end
  end
end
