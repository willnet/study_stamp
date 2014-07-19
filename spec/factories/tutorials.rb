# == Schema Information
#
# Table name: tutorials
#
#  id            :integer          not null, primary key
#  assignment_id :integer
#  title         :string(255)
#  description   :text
#  created_at    :datetime
#  updated_at    :datetime
#  number        :integer
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tutorial do
    assignment nil
    title "MyString"
    description "MyText"
  end
end
