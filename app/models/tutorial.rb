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

class Tutorial < ActiveRecord::Base
  belongs_to :assignment
  has_many :stamps

  def stamped_by?(user)
    stamps.find { |stamp| stamp.user_id == user.id }
  end
end
