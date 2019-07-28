class TasksController < ApplicationController
  before_action :set_task, only: [:destroy, :done]
  def index
    @task = Task.new
    @tasks = Task.order(created_at: :desc)
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path, notice: "Task is created"
    else
      @tasks = Task.order(created_at: :desc)
      render :index
    end
  end

  def destroy
    @task.destroy!
    redirect_to tasks_path, notice: "Task is deleted!"
  end

  def done
    if @task.done
      redirect_to tasks_path, notice: "Task is done!"
    else
      @tasks = Task.order(created_at: :desc)
      render :index
    end
  end

  private

  def task_params
    params.require(:task).permit(:title)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
