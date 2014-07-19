class UserTutorial < ActiveRecord::Base
  belongs_to :user
  belongs_to :assignment
  belongs_to :tutorial
end
