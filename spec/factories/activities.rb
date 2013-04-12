# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :activity do
    text "MyString"
    type ""
    venue_id 1
  end
end
