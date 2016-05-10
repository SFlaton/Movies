require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  let(:categories) {FactoryGirl.create_list(:category, 3)}
  describe "GET index" do
    it "assigns all categories to @categories" do
      get :index
      expect(assigns(:categories)).to eq categories
    end
  end
end
