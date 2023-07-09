FactoryBot.define do
  factory :developer do
    name { FFaker::Name.first_name }
    sprint_id {1}
  end
end
