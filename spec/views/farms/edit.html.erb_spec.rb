require 'spec_helper'

describe "/farms/edit.html.erb" do
  include FarmsHelper

  before(:each) do
    assigns[:farm] = @farm = stub_model(Farm,
      :new_record? => false,
      :name => "value for name",
      :organic => false,
      :latitude => 1.5,
      :longitude => 1.5,
      :altitude => 1.5
    )
  end

  it "renders the edit farm form" do
    render

    response.should have_tag("form[action=#{farm_path(@farm)}][method=post]") do
      with_tag('input#farm_name[name=?]', "farm[name]")
      with_tag('input#farm_organic[name=?]', "farm[organic]")
      with_tag('input#farm_latitude[name=?]', "farm[latitude]")
      with_tag('input#farm_longitude[name=?]', "farm[longitude]")
      with_tag('input#farm_altitude[name=?]', "farm[altitude]")
    end
  end
end
