require 'rails_helper'
RSpec.describe Item, type: :model do
	context "Associations" do
    it "item belongs to user" do 
    	expect(should belong_to(:user)).to eq(true) 
    end
  end
	context 'validation test' do  # (almost) plain English
	 	it 'ensure title is present' do   #
		 	item = Item.new( url: "demo.html", text: "hello ani", user_id: 1 ).save
	    expect(item).to eq(false)
  	end
	 	it 'ensure url is present' do   #
		 	item = Item.new(title: "demo", text: "hello ani", user_id: 1 ).save
	    expect(item).to eq(false)
  	end
	 	it 'ensure text is present' do   #
		 	item = Item.new(url: "demo", title: "hello", user_id: 1 ).save
	    expect(item).to eq(false)
  	end
  	it 'ensure user is present' do   #
		 	item = Item.new(url: "demo", title: "hello", text: "demo ani").save
	    expect(item).to eq(false)
  	end
	end
end
