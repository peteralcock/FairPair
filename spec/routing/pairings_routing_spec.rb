require "rails_helper"

RSpec.describe PairingsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/pairings").to route_to("pairings#index")
    end

    it "routes to #new" do
      expect(get: "/pairings/new").to route_to("pairings#new")
    end

    it "routes to #show" do
      expect(get: "/pairings/1").to route_to("pairings#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/pairings/1/edit").to route_to("pairings#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/pairings").to route_to("pairings#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/pairings/1").to route_to("pairings#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/pairings/1").to route_to("pairings#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/pairings/1").to route_to("pairings#destroy", id: "1")
    end
  end
end
