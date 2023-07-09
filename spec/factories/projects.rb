FactoryBot.define do
  factory :project do
    lead_developer_id { 1 }
    name { "MyString" }
    description { "MyText" }
    status { "MyString" }
    user_id { 1 }
    manager_id { 1 }
    source_url { "MyString" }
    is_complete { false }
    start_date { "2023-07-08 20:51:23" }
    end_date { "2023-07-08 20:51:23" }
    priority { 1 }
  end
end
