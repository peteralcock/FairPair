require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      lead_developer_id: 1,
      name: "MyString",
      description: "MyText",
      status: "MyString",
      user_id: 1,
      manager_id: 1,
      source_url: "MyString",
      is_complete: false,
      priority: 1
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input[name=?]", "project[lead_developer_id]"

      assert_select "input[name=?]", "project[name]"

      assert_select "textarea[name=?]", "project[description]"

      assert_select "input[name=?]", "project[status]"

      assert_select "input[name=?]", "project[user_id]"

      assert_select "input[name=?]", "project[manager_id]"

      assert_select "input[name=?]", "project[source_url]"

      assert_select "input[name=?]", "project[is_complete]"

      assert_select "input[name=?]", "project[priority]"
    end
  end
end
