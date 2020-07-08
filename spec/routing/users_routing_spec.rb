require "rails_helper"

RSpec.describe UsersController, type: :routing do
  describe "routing" do
    it "routes to #profile" do
      expect(get: "/profile").to route_to("devise/registrations#edit")
    end
    it "routes to #signin" do
      expect(get: "/signin").to route_to("devise/sessions#new")
    end
    it "routes to #signout" do
      expect(delete: "/signout").to route_to("devise/sessions#destroy")
    end
    it "routes to #signup" do
      expect(get: "/signup").to route_to("devise/registrations#new")
    end
    it "routes to #follow" do
      expect(post: "/users/ani/follow").to route_to("follows#create", username: "ani")
    end
    it "routes to #unfollow" do
      expect(delete: "/users/ani/unfollow").to route_to("follows#destroy", username: "ani")
    end
  end
end
