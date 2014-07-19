class UserAssignmentsController < ApplicationController
  def show
    @user = User.find_by_nickname!(params[:user_id])
    @assignment = @user.assignments.find(params[:id])
    @tutorials = @assignment.tutorials.includes(:stamps)
  end
end
