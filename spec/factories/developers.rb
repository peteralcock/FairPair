FactoryBot.define do
  factory :developer do
    name { FFaker::Name.name }
    sprint_id {1}
  end
end
