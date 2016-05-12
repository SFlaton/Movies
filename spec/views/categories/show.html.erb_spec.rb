require 'rails_helper'

RSpec.describe "categories/show.html.erb", type: :view do
  let(:category) { FactoryGirl.create(:category)}
  let(:movies) {FactoryGirl.create(:movie, category: category)}
  before do
    assign(:category, category)
    render
  end

  it "shows a category name" do
    assert_select "h2", text: category.name, count: 1
  end
  
end
