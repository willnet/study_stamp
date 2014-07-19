class TutorialsController < ApplicationController
  def show
    @assignment = Assignment.find(params[:assignment_id])
    @tutorial = @assignment.tutorials.find(params[:id])
  end
end
