class FollowersController < ApplicationController

 def follow_user
        follower_id = params[:follow_id]
      if  Follower.create!(follower_id: current_user.id, following_id: follower_id)
         flash[:suscess] = "All right" 
      end
      redirect_to root_url
 end

end
