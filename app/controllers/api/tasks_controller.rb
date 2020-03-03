# frozen_string_literal: true

module Api
  class TasksController < BaseController
    acts_as_token_authentication_handler_for User
    before_action :find_task, only: %i[show update destroy toggle]

    def index
      @tasks = current_user.tasks
    end

    def show; end

    def create
      @task = Task.new task_params
      @task.list = List.find(task_params[:list_id])
      if @task.save
        render :show, status: :created
      else
        render_error
      end
    end

    def update
      if @task.update(task_params)
        render :show
      else
        render_error
      end
    end

    def toggle
      if @task.update(done: !@task.done)
        render :show
      else
        render_error
      end
    end

    def destroy
      @task.destroy
      head :no_content
    end

    private

    def task_params
      params.permit(:title, :due_date, :note, :list_id)
    end

    def find_task
      @task = Task.find(params[:id])
    end

    def render_error
      render json: { errors: @task.errors.full_messages },
             status: :unprocessable_entity
    end
  end
end
