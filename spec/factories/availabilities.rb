# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :availability do
    date "2013-04-11"
    promotion "MyString"
    venue_id 1
  end
end
