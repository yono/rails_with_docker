class TasksController < ApplicationController
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

  def done
    @task = Task.find(params[:id])
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
end
