class TasksController < ApplicationController

  ## Responders
  respond_to :html, :json

  ## Actions
  def index
    respond_with @tasks = Task.all
  end

  def show
    respond_with @task = Task.find(params[:id])
  end

  def new
    respond_with @task = Task.new
  end

  def create
    respond_with @task = Task.create(task_params)
  end

  def reported
    respond_with @tasks_by_assignee = Task.find(:all).group_by { |t| t.assignee.name }
  end

  def assigned
    respond_with @tasks = Task.all.order("priority")
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :report_person_id, :assignee_id, :estimate_time, :priority)
  end

end
