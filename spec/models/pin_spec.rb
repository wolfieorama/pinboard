require 'rails_helper'

describe Pin do
  it "has a valid factory" do
    expect(FactoryGirl.create(:pin)).to be_valid
  end
  it "invalid without a title" do
    expect(FactoryGirl.build(:pin, title: nil)).to be_invalid
  end
  it "invalid without a description" do
    expect(FactoryGirl.build(:pin, description: nil)).to be_invalid
  end
end
