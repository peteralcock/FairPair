require "rails_helper"

RSpec.describe PtoRequestsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/pto_requests").to route_to("pto_requests#index")
    end

    it "routes to #new" do
      expect(get: "/pto_requests/new").to route_to("pto_requests#new")
    end

    it "routes to #show" do
      expect(get: "/pto_requests/1").to route_to("pto_requests#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/pto_requests/1/edit").to route_to("pto_requests#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/pto_requests").to route_to("pto_requests#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/pto_requests/1").to route_to("pto_requests#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/pto_requests/1").to route_to("pto_requests#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/pto_requests/1").to route_to("pto_requests#destroy", id: "1")
    end
  end
end
