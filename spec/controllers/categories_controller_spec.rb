require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  let(:categories) {FactoryGirl.create_list(:category, 3)}
  let(:category) {FactoryGirl.create(:category)}
  describe "GET index" do
    it "assigns all categories to @categories" do
      get :index
      expect(assigns(:categories)).to eq categories
    end
  end

  describe "GET show" do
    it "assigns a category to @category" do
      get :show, id: category
      expect(assigns(:category)).to eq category
    end
  end
end
