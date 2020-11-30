class UsersController < ApplicationController
  def index
    follower_ids = Follower.where(follower_id: current_user.id).map(&:following_id)
    follower_ids << current_user.id
    @follower = User.where(id: follower_ids)
    @users = User.where.not(id: current_user.id)
  end

  def show
      @user = User.find(params[:id])
      @articles = @user.articles
  end

end
