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

class UserAssignment < ActiveRecord::Base
  belongs_to :user
  belongs_to :assignment
end
