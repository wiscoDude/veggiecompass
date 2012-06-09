require 'spec_helper'

describe "plants/new" do
  before(:each) do
    assign(:plant, stub_model(Plant,
      :name => "MyString",
      :plant_type_id => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new plant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => plants_path, :method => "post" do
      assert_select "input#plant_name", :name => "plant[name]"
      assert_select "input#plant_type_id", :name => "plant[type_id]"
      assert_select "input#plant_user_id", :name => "plant[user_id]"
    end
  end
end
