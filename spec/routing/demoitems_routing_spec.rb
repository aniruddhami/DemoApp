require "rails_helper"

RSpec.describe DemoitemsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/demoitems").to route_to("demoitems#index")
    end

    it "routes to #new" do
      expect(get: "/demoitems/new").to route_to("demoitems#new")
    end

    it "routes to #show" do
      expect(get: "/demoitems/1").to route_to("demoitems#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/demoitems/1/edit").to route_to("demoitems#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/demoitems").to route_to("demoitems#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/demoitems/1").to route_to("demoitems#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/demoitems/1").to route_to("demoitems#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/demoitems/1").to route_to("demoitems#destroy", id: "1")
    end
  end
end
