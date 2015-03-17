class LessonsController < ApplicationController
  def show
    @course = Course.find(params[:id])
    @lesson = Lesson.find(params[:id])
  end
end
