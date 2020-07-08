require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
	context "GET #index" do
		it "return successfull response" do
			get :index
			expect(response).to be_successful
			# expect(response).to render_template("index")
		end
	end
	context "Post #new" do
		it "return successfull response" do
			post :create ,params: {title: "demo", text: "hello ani", url: "Ani", user_id: 1}
       expect(response).to be_successful # be_successful expects a HTTP Status code of 200
      # post :create , params: {title: "demo", text: "hello ani", url: "Ani", user_id: 1}
      # expect(response).to be_successful
		end
	end
end
