FactoryBot.define do
  factory :diet_profile do
    user_id { 1 }
    developer_id { 1 }
    restrictions { "MyText" }
    favorites { "MyText" }
    allergies { "MyText" }
    likes { "MyText" }
    dislikes { "MyText" }
  end
end
