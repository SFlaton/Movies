require 'rails_helper'

RSpec.describe "categories/index.html.erb", type: :view do
  let(:category) { FactoryGirl.create(:category)}
  before do
    assign(:category, category)
    render
  end

  it "shows a title" do
    assert_select "h2", text: category.name, count: 1

  end
end
