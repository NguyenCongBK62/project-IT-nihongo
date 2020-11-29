class UsersController < ApplicationController
  def index
    @users = User.where.not(id: current_user.id)
  end

  def show
      @user = User.find(params[:id])
      @articles = @user.articles
  end

end
