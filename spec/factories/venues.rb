# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :venue do
    address "MyString"
    latitude 1.5
    longitude 1.5
    image "MyString"
    name "MyString"
    user_id "MyString"
  end
end
