FactoryBot.define do
  factory :schedule do
    json_schedule { "" }
    raw_text_schedule { "MyText" }
    project_id { 1 }
    sprint_id { 1 }
    user_id { 1 }
    manager_id { 1 }
    is_approved { false }
    approved_at { 1 }
  end
end
