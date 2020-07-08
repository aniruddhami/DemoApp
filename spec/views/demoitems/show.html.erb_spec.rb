require 'rails_helper'

RSpec.describe "demoitems/show", type: :view do
  before(:each) do
    @demoitem = assign(:demoitem, Demoitem.create!(
      title: "Title",
      url: "Url",
      text: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/MyText/)
  end
end
