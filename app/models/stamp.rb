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

class Stamp < ActiveRecord::Base
  belongs_to :user
  belongs_to :tutorial
  belongs_to :assignment
end
