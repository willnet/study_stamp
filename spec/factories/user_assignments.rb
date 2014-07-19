# == Schema Information
#
# Table name: user_assignments
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  assignment_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_assignment do
    user nil
    assignment nil
  end
end
