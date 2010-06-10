require 'spec_helper'

describe "/farms/index.html.erb" do
  include FarmsHelper

  before(:each) do
    assigns[:farms] = [
      stub_model(Farm,
        :name => "value for name",
        :organic => false,
        :latitude => 1.5,
        :longitude => 1.5,
        :altitude => 1.5
      ),
      stub_model(Farm,
        :name => "value for name",
        :organic => false,
        :latitude => 1.5,
        :longitude => 1.5,
        :altitude => 1.5
      )
    ]
  end

  it "renders a list of farms" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", false.to_s, 2)
    response.should have_tag("tr>td", 1.5.to_s, 2)
    response.should have_tag("tr>td", 1.5.to_s, 2)
    response.should have_tag("tr>td", 1.5.to_s, 2)
  end
end
