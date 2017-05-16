class TasksController < ApplicationController

  def index
    @tasks = Task.order(:completion_date => :desc)
  end

  def show
    @task = Task.find(params[:id])
  end
end