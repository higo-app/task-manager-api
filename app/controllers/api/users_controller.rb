# frozen_string_literal: true

module Api
  class UsersController < BaseController
    def create
      @user = User.new user_params
      if @user.save
        puts @user.inspect
        render :show, status: :created
      else
        render_error
      end
    end

    def show; end

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
