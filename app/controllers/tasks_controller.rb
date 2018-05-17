class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
     @tasks = Task.find(params[:id])
  end

  def update

  end

private

def task_params
  return params.require(:task).permit(:title, :details)
end

end

