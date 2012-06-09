require 'spec_helper'

describe "tasks/edit" do
  before(:each) do
    @task = assign(:task, stub_model(Task,
      :minutes => 1,
      :plant_id => 1,
      :user_id => 1,
      :notes => "MyText"
    ))
  end

  it "renders the edit task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tasks_path(@task), :method => "post" do
      assert_select "input#task_minutes", :name => "task[minutes]"
      assert_select "input#task_plant_id", :name => "task[plant_id]"
      assert_select "input#task_user_id", :name => "task[user_id]"
      assert_select "textarea#task_notes", :name => "task[notes]"
    end
  end
end
