require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  let(:project) {
    Project.create!(
      lead_developer_id: 1,
      name: "MyString",
      description: "MyText",
      status: "MyString",
      user_id: 1,
      manager_id: 1,
      source_url: "MyString",
      is_complete: false,
      priority: 1
    )
  }

  before(:each) do
    assign(:project, project)
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(project), "post" do

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
