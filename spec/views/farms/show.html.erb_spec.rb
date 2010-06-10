require 'spec_helper'

describe "/farms/show.html.erb" do
  include FarmsHelper
  before(:each) do
    assigns[:farm] = @farm = stub_model(Farm,
      :name => "value for name",
      :organic => false,
      :latitude => 1.5,
      :longitude => 1.5,
      :altitude => 1.5
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/false/)
    response.should have_text(/1\.5/)
    response.should have_text(/1\.5/)
    response.should have_text(/1\.5/)
  end
end
