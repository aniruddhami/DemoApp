require 'rails_helper'

RSpec.describe "new_galleries/edit", type: :view do
  before(:each) do
    @new_gallery = assign(:new_gallery, NewGallery.create!(
      user: nil,
      name: "MyString",
      discription: "MyText",
      images: "MyString"
    ))
  end

  it "renders the edit new_gallery form" do
    render

    assert_select "form[action=?][method=?]", new_gallery_path(@new_gallery), "post" do

      assert_select "input[name=?]", "new_gallery[user_id]"

      assert_select "input[name=?]", "new_gallery[name]"

      assert_select "textarea[name=?]", "new_gallery[discription]"

      assert_select "input[name=?]", "new_gallery[images]"
    end
  end
end
