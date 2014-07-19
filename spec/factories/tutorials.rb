# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tutorial do
    assignment nil
    title "MyString"
    description "MyText"
  end
end
