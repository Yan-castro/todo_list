# frozen_string_literal: true

# Controller responsible for managing tasks.
class TasksController < ApplicationController
  before_action :fetch_task, only: %i[edit update destroy show]

  def index
    @tasks = Task.all
  end

  def show
    # Implement your show logic here
  end

  def new
    @task = Task.new
  end

  def edit
    # Implement your edit logic here
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path, notice: I18n.t('task_created_success')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @task.update(task_params)
      redirect_to tasks_path, notice: I18n.t('task_update_success')
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path, notice: I18n.t('task_destroy_success')
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :done)
  end

  def fetch_task
    @task = Task.find(params[:id])
  end
end
