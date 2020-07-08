require 'rails_helper'

RSpec.describe "demoitems/new", type: :view do
  before(:each) do
    assign(:demoitem, Demoitem.new(
      title: "MyString",
      url: "MyString",
      text: "MyText"
    ))
  end

  it "renders new demoitem form" do
    render

    assert_select "form[action=?][method=?]", demoitems_path, "post" do

      assert_select "input[name=?]", "demoitem[title]"

      assert_select "input[name=?]", "demoitem[url]"

      assert_select "textarea[name=?]", "demoitem[text]"
    end
  end
end
