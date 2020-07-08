require 'rails_helper'

RSpec.describe "items/show", type: :view do

  before(:each) do
    user = User.create( name: "ani", username: "Anirusdfddha123",email:"andfi@gmail.com", password:"asdf")
    @item = assign(:item, user.items.create!(
      title: "Title",
      url: "Url",
      text: "MyText"
    ).save)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/MyText/)
  end
end
