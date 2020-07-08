 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/demoitems", type: :request do
  # Demoitem. As you add validations to Demoitem, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do  {
   title: "ani", url: "rsd", text: "demo", id: nil
  }
  end

  let(:invalid_attributes) do  {
   title: "ani", url: "rsd", id: nil
  }
  end

  describe "GET /index" do
    it "renders a successful response" do
      Demoitem.create valid_attributes
      get demoitems_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do      
      valid_attributes["id"] = 1
      demoitem = Demoitem.create valid_attributes
      get demoitem_url(demoitem)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_demoitem_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
       valid_attributes["id"] = 1
      demoitem = Demoitem.create! valid_attributes
      get edit_demoitem_url(demoitem)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Demoitem" do
        expect {
          post demoitems_url, params: { demoitem: valid_attributes }
        }.to change(Demoitem, :count).by(1)
      end

      it "redirects to the created demoitem" do
        post demoitems_url, params: { demoitem: valid_attributes }
        expect(response).to redirect_to(demoitem_url(Demoitem.last))
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) do  {
       title: "ani", url: "rsd", text: "demo", id: nil
      }
      end

      it "updates the requested demoitem" do
        new_attributes["id"] = 1
        demoitem = Demoitem.create! valid_attributes
        patch demoitem_url(demoitem), params: { demoitem: new_attributes }
        demoitem.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the demoitem" do
        demoitem = Demoitem.create! valid_attributes
         new_attributes["id"] = 1
        patch demoitem_url(demoitem), params: { demoitem: new_attributes }
        demoitem.reload
        expect(response).to redirect_to(demoitem_url(demoitem))
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested demoitem" do
      valid_attributes["id"] = 1
      demoitem = Demoitem.create valid_attributes
      expect {
        delete demoitem_url(demoitem)
      }.to change(Demoitem, :count).by(-1)
    end

    it "redirects to the demoitems list" do
      valid_attributes["id"] = 1
      demoitem = Demoitem.create valid_attributes
      delete demoitem_url(demoitem)
      expect(response).to redirect_to(demoitems_url)
    end
  end
end
