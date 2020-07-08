require 'rails_helper'

RSpec.describe NewitemsController, type: :controller do
	context "GET #index" do
		it "return successfull response" do
			get :index
			expect(response).to render_template("index")
		end
	end
	context "GET #show" do
		it "return successfull response" do
			item = Newitem.create!(url: "demo", title: "hello", text: "demo ani" )
			get :show , params: {id: item.to_param}
			expect(response).to render_template("show")
		end
	end
end
