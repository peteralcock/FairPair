FactoryBot.define do
  factory :pairing do
    manager_id { 1 }
    developer1 { create(:developer) }
    developer2 { create(:developer) }
    sprint { create(:sprint) }
  end
end
