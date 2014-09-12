class TasksController < ApplicationController
  before_action :set_task, only: [:show, :update, :destroy]
  # create a before_action that just returns the template
  #   without the layout
  before_action :render_main_layout_if_format_html

  respond_to :json, :html

  layout :false

  def index
    respond_with (@tasks = Task.all)
  end

  def create
    respond_with Task.create(task_params)
  end

  def show
    respond_with @task
  end

  def update
    respond_with @task.update(task_params)
  end

  def destroy
    respond_with @task.destroy
  end

  private
  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title)
  end

  def render_main_layout_if_format_html
    # check the request format
    if request.format.symbol == :html
      render "layouts/application"
    end
  end

end