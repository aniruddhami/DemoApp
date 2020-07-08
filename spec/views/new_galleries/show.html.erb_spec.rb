require 'rails_helper'

RSpec.describe "new_galleries/show", type: :view do
  before(:each) do
    @new_gallery = assign(:new_gallery, NewGallery.create!(
      user: nil,
      name: "Name",
      discription: "MyText",
      images: "Images"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Images/)
  end
end
