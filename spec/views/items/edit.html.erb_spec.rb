require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  user = User.create( name: "ani", username: "Anirusdfddha123",email:"andfi@gmail.com", password:"asdf").save
  binding.pry
  before(:each) do
    @item = assign(:item, user.items.create!(
      title: "MyString",
      url: "MyString",
      text: "MyText"
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input[name=?]", "item[title]"

      assert_select "input[name=?]", "item[url]"

      assert_select "textarea[name=?]", "item[text]"
    end
  end
end
