class TasksController < ApplicationController
  
  def index
    @tasks = Task.all

  end

  def new
    @task = Task.new

  end

  def create
    @task = Task.new(task_params)
    if @task.save
      respond_to do |f|
        f.html {render :show}
        f.json {render json: @task}
      end
  end

  def show
    @task = Task.find_by(:id)
  end
  
  def edit
    @task = Task.find_by(:id)

  end

  def update

  end 

  private

  def task_params
    params.require(:task).permit(:name)

  end
end
