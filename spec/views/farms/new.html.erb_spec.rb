require 'spec_helper'

describe "/farms/new.html.erb" do
  include FarmsHelper

  before(:each) do
    assigns[:farm] = stub_model(Farm,
      :new_record? => true,
      :name => "value for name",
      :organic => false,
      :latitude => 1.5,
      :longitude => 1.5,
      :altitude => 1.5
    )
  end

  it "renders new farm form" do
    render

    response.should have_tag("form[action=?][method=post]", farms_path) do
      with_tag("input#farm_name[name=?]", "farm[name]")
      with_tag("input#farm_organic[name=?]", "farm[organic]")
      with_tag("input#farm_latitude[name=?]", "farm[latitude]")
      with_tag("input#farm_longitude[name=?]", "farm[longitude]")
      with_tag("input#farm_altitude[name=?]", "farm[altitude]")
    end
  end
end
