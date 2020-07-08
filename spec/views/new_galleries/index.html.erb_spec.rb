require 'rails_helper'

RSpec.describe "new_galleries/index", type: :view do
  before(:each) do
    assign(:new_galleries, [
      NewGallery.create!(
        user: nil,
        name: "Name",
        discription: "MyText",
        images: "Images"
      ),
      NewGallery.create!(
        user: nil,
        name: "Name",
        discription: "MyText",
        images: "Images"
      )
    ])
  end

  it "renders a list of new_galleries" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Images".to_s, count: 2
  end
end
