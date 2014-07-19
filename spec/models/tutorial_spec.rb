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

require 'rails_helper'

RSpec.describe Tutorial, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
