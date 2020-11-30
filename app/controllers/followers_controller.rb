class FollowersController < ApplicationController
    
 def create
        follower_id = params[:follow_id]
      if  Follower.create!(follower_id: current_user.id, following_id: follower_id)
         flash[:suscess] = "All right" 
      end
      redirect_to root_url
 end
  
  def destroy
    follower_id = params[:id]
    @user =Follower.find_by(following_id: follower_id)
    @user.destroy
    redirect_to root_url
  end

end