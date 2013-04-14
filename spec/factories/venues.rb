# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :venue do
    user_id 1
    address "MyString"
    latitude 1.5
    longitude 1.5
    image "MyString"
    name "MyString"
  end
end
