require 'spec_helper'

describe "plants/show" do
  before(:each) do
    @plant = assign(:plant, stub_model(Plant,
      :name => "Name",
      :plant_type_id => 1,
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
