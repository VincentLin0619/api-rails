require "spec_helper"
require "rails_helper"

RSpec.describe Article, type: :routing do
  it "articles#index" do
    aggregate_failures do
      expect(get("/articles")).to route_to("articles#index")
      expect(post("/articles")).to route_to("articles#create")
      expect(delete("/articles/3")).to route_to("articles#destroy", id: "3")
      expect(get("/articles?page[number]=3")).to route_to("articles#index", page: {number: 3})
    end
  end
end
