require 'rails_helper'

RSpec.describe "items/new", type: :view do
  user = User.create( name: "ani", username: "Anirusdfddha123",email:"andfi@gmail.com", password:"asdf")
  before(:each) do
    assign(:item, user.items.new(
      title: "MyString",
      url: "MyString",
      text: "MyText"
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input[name=?]", "item[title]"

      assert_select "input[name=?]", "item[url]"

      assert_select "textarea[name=?]", "item[text]"
    end
  end
end
