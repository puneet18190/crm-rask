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

  def reported
    respond_with @tasks = Task.all
  end

  def assigned
    respond_with @tasks = Task.all
  end

end
