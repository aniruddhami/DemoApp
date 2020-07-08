require "rails_helper"

RSpec.describe NewGalleriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/new_galleries").to route_to("new_galleries#index")
    end

    it "routes to #new" do
      expect(get: "/new_galleries/new").to route_to("new_galleries#new")
    end

    it "routes to #show" do
      expect(get: "/new_galleries/1").to route_to("new_galleries#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/new_galleries/1/edit").to route_to("new_galleries#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/new_galleries").to route_to("new_galleries#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/new_galleries/1").to route_to("new_galleries#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/new_galleries/1").to route_to("new_galleries#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/new_galleries/1").to route_to("new_galleries#destroy", id: "1")
    end
  end
end
