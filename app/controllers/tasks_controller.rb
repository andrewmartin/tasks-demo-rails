class TasksController < ApplicationController
  before_action :set_task, only: [:update]

  def index
    @tasks = Task.where(completed: nil).paginate(page: params[:page], per_page: params[:per_page])
  end

  def update
    @task.update(task_params)
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:completed)
  end
end
