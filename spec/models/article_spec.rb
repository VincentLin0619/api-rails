require "rails_helper"

RSpec.describe Article, type: :model do
  let (:article) {create(:article)}
  it "number is be positive" do
    expect(article.title).to eq("test title")
  end
  it "title is not empty" do
    article.title = ''
    expect(article).not_to be_valid
    expect(article.errors[:title]).to include("can't be blank")
  end
end
