require 'rails_helper'

RSpec.describe Newitem, type: :model do
  context 'validation test' do  # (almost) plain English
	 	it 'ensure title is present' do   #
		 	item = Newitem.new( url: "demo.html", text: "hello ani" ).save
	    expect(item).to eq(false)
  	end
	 	it 'ensure url is present' do   #
		 	item = Newitem.new(title: "demo", text: "hello ani" ).save
	    expect(item).to eq(false)
  	end
	 	it 'ensure text is present' do   #
		 	item = Newitem.new(url: "demo", title: "hello" ).save
	    expect(item).to eq(false)
  	end
  	it 'ensure data inserting' do   #
		 	item = Newitem.new(url: "demo", title: "hello", text: "demo ani" ).save
	    expect(item).to eq(true)
  	end
	end
end
