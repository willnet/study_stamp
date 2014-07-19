# == Schema Information
#
# Table name: stamps
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  tutorial_id   :integer
#  assignment_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :stamp do
    user nil
    user_tutorial nil
    tutorial nil
    assignment nil
  end
end
