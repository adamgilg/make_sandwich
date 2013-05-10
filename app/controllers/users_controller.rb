class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @user = User.includes(:orders, :sandwiches).find(params[:id])
  end
end