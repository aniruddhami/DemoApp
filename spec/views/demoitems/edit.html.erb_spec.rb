require 'rails_helper'

RSpec.describe "demoitems/edit", type: :view do
  before(:each) do
    @demoitem = assign(:demoitem, Demoitem.create!(
      title: "MyString",
      url: "MyString",
      text: "MyText"
    ))
  end

  it "renders the edit demoitem form" do
    render

    assert_select "form[action=?][method=?]", demoitem_path(@demoitem), "post" do

      assert_select "input[name=?]", "demoitem[title]"

      assert_select "input[name=?]", "demoitem[url]"

      assert_select "textarea[name=?]", "demoitem[text]"
    end
  end
end
