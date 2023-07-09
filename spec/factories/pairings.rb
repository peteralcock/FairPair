FactoryBot.define do
  factory :pairing do
    developer1_id { 1 }
    developer2_id { 2 }
    manager_id { 1 }
    user_id { 1 }
    sprint_id { 1 }
    kudos_id { 1 }
  end
end
