FactoryBot.define do
  factory :new_gallery do
    user { nil }
    name { "MyString" }
    discription { "MyText" }
    images { "MyString" }
  end
end
