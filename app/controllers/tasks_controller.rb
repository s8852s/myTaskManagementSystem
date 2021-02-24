class TasksController < ApplicationController
  before_action :find_task, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params_task)
    if @task.save
      redirect_to "/", notice: "新增任務成功"
    else
      render :new
    end
  end

  def edit 
  end

  def update

    if @task.update(params_task)
      redirect_to root_path, notice: "編輯任務成功"
    else
      render :edit
    end
  end

  def destroy
    @task.destroy if @task
    redirect_to root_path, notice: "已刪除任務"
  end

  private
  def params_task
    params.require(:task).permit(:title, :description)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end
