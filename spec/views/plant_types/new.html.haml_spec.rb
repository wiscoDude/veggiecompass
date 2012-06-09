require 'spec_helper'

describe "plant_types/new" do
  before(:each) do
    assign(:plant_type, stub_model(PlantType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new plant_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => plant_types_path, :method => "post" do
      assert_select "input#plant_type_name", :name => "plant_type[name]"
    end
  end
end
