require 'rails_helper'

RSpec.describe Tweet, type: :model do
	context 'validation test' do  # (almost) plain English
	 	it 'ensure content is present' do   #
		 	tweet = Tweet.new(user_id: 1 ).save
	    expect(tweet).to eq(false)
  	end
	 	it 'ensure user is present' do   #
		 	tweet = Tweet.new(content: "demo").save
	    expect(tweet).to eq(false)
  	end
	 	it 'ensure image is present' do   #
		 	tweet = Tweet.new(content: "demo", user_id: 1 ).save
	    expect(tweet).to eq(false)
  	end
	end
end
