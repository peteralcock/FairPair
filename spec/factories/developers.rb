FactoryBot.define do
  factory :developer do
    name { "MyString" }
    employee_id { 1 }
    kudos { 1 }
    current_sprint_id { 1 }
    current_pairing_id { 1 }
    job_title { "MyString" }
    is_on_pto { false }
    manager_id { 1 }
    user_id { 1 }
  end
end
