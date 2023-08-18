require "rails_helper"

RSpec.describe Article, type: :model do
  it "number is be positive" do
    a1 = create(:article)
    expect(a1.title).to eq("test title1")
  end
end
