require 'spec_helper'

describe "plant_types/edit" do
  before(:each) do
    @plant_type = assign(:plant_type, stub_model(PlantType,
      :name => "MyString"
    ))
  end

  it "renders the edit plant_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => plant_types_path(@plant_type), :method => "post" do
      assert_select "input#plant_type_name", :name => "plant_type[name]"
    end
  end
end
