require "rails_helper"

RSpec.describe ParisesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/parises").to route_to("parises#index")
    end

    it "routes to #new" do
      expect(get: "/parises/new").to route_to("parises#new")
    end

    it "routes to #show" do
      expect(get: "/parises/1").to route_to("parises#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/parises/1/edit").to route_to("parises#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/parises").to route_to("parises#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/parises/1").to route_to("parises#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/parises/1").to route_to("parises#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/parises/1").to route_to("parises#destroy", id: "1")
    end
  end
end
