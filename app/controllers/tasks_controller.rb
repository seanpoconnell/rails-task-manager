class TasksController < ApplicationController
  # GET /pets
  def index
    @tasks = Task.all
  end

  # GET task/:id
  def show
    @task = Task.find(params[:id])
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # POST /tasks
  def create
    @task = Task.new(task_params)
    # raise
    if @task.save
      redirect_to task_path(@task)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end


