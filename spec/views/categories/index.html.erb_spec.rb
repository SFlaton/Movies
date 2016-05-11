require 'rails_helper'

RSpec.describe "categories/index.html.erb", type: :view do
  let(:categories) { FactoryGirl.create_list(:category, 3)}
  before do
    assign(:categories, categories)
    render
  end

  it "shows a title" do
    categories.each do |category|
      assert_select "h3", text: category.name, count: 1
    end
  end
end
