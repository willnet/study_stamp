class StampsController < ApplicationController
  before_action :authenticate

  def create
    assignment_id = params[:assignment_id]
    tutorial_id = params[:tutorial_id]
    @assignment = Assignment.find(assignment_id)
    @stamp = current_user.stamps.create!(assignment_id: assignment_id, tutorial_id: tutorial_id)
    render layout: false
  end

  def destroy
    assignment_id = params[:assignment_id]
    @assignment = Assignment.find(assignment_id)
    stamp = current_user.stamps.where(id: params[:stamp_id]).first!
    @tutorial = stamp.tutorial
    stamp.destroy!

    render layout: false
  end
end
