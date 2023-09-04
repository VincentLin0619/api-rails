require "rails_helper"

RSpec.describe Article, type: :model do
  it "number is be positive" do
    a1 = create(:article)
    expect(a1.title).to eq("test title")
  end
  it "title is not empty" do
    a1 = build(:article, title: "")
    expect(a1).not_to be_valid
    expect(a1.errors[:title]).to include("can't be blank")
  end
end
