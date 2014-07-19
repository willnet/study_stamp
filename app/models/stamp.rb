class Stamp < ActiveRecord::Base
  belongs_to :user
  belongs_to :user_tutorial
  belongs_to :tutorial
  belongs_to :assignment
end
