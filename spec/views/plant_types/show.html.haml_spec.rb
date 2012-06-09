require 'spec_helper'

describe "plant_types/show" do
  before(:each) do
    @plant_type = assign(:plant_type, stub_model(PlantType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
