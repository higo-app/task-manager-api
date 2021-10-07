# frozen_string_literal: true

module Api
  class UsersController < BaseController
    include Pundit

    skip_after_action :verify_authorized
    def create
      @user = User.new user_params
      if @user.save
        render :show, status: :created
      else
        render_error
      end
    end

    def show; end

    def token
      @user = User.find_by(email: user_params[:email])
      if @user
        render :show, status: :ok
      else
        render_error
      end
    end

    private

    def user_params
      params.permit(:email, :password)
    end

    def render_error
      render json: { errors: @user.errors.full_messages },
             status: :unprocessable_entity
    end
  end
end
