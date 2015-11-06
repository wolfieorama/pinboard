require 'rails_helper'

describe Pin do
  it "has a valid factory" do
    expect(FactoryGirl.create(:pin)).to be_valid
  end
  it "invalid without a title"
  it "invalid without a description"
end
