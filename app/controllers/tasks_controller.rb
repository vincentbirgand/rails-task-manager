class TasksController < ApplicationController
  def index         # GET /restaurants
    @tasks = Task.all
  end

  def show          # GET /restaurants/:id
    @task = Task.find(params[:id])
  end

  def new           # GET /restaurants/new
    @task = Task.new
  end

  def create        # POST /restaurants
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def edit          # GET /restaurants/:id/edit
  end

  def update        # PATCH /restaurants/:id
  end

  def destroy       # DELETE /restaurants/:id
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
