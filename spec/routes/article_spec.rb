require "spec_helper"
require "rails_helper"

RSpec.describe Article, type: :routing do
  it "articles#index" do
    expect(get("/articles")).to route_to("article#index")
  end
end
