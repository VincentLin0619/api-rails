require 'rails_helper'

RSpec.describe Article, type: :model do
  it "number is be positive" do
    expect(1).to be_positive
  end
end
