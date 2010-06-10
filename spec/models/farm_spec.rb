require 'spec_helper'

describe Farm do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :organic => false,
      :latitude => 1.5,
      :longitude => 1.5,
      :altitude => 1.5
    }
  end

  it "should create a new instance given valid attributes" do
    Farm.create!(@valid_attributes)
  end
end
