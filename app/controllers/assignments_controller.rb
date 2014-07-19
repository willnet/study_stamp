class AssignmentsController < ApplicationController
  def index
    @assignments = Assignment.all
  end

  def show
    @assignment = Assignment.find(params[:id])
    @tutorials = @assignment.tutorials.order(:number).includes(:stamps)
  end
end
