# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :check_in do
    latitude 1.5
    longitude 1.5
    user_id 1
    stop_id 1
  end
end
