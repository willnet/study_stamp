# == Schema Information
#
# Table name: assignments
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Assignment < ActiveRecord::Base
  has_many :tutorials
  has_many :user_assignments
  has_many :users, through: :user_assignments

  def working_by?(user)
    users.where(user: user).exists?
  end
end
