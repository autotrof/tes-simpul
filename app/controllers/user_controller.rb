class UserController < ApplicationController
  def create
    @user = User.new(user_param)
    @user.save
    render json: @user
  end

  private
    def user_param
      params.permit(:name)
    end
end
