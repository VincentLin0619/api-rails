require "rails_helper"

RSpec.describe Article, type: :model do
  it "title is be currect" do
    a1 = create(:article)
    p a1
    expect(a1.title).to eq("test title")
  end
  it "id will be unique" do
  end
end
