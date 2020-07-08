require 'rails_helper'

RSpec.describe "new_galleries/new", type: :view do
  before(:each) do
    assign(:new_gallery, NewGallery.new(
      user: nil,
      name: "MyString",
      discription: "MyText",
      images: "MyString"
    ))
  end

  it "renders new new_gallery form" do
    render

    assert_select "form[action=?][method=?]", new_galleries_path, "post" do

      assert_select "input[name=?]", "new_gallery[user_id]"

      assert_select "input[name=?]", "new_gallery[name]"

      assert_select "textarea[name=?]", "new_gallery[discription]"

      assert_select "input[name=?]", "new_gallery[images]"
    end
  end
end
