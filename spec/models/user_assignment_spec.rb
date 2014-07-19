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

require 'rails_helper'

RSpec.describe UserAssignment, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
