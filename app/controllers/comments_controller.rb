class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.create!(comment_params)
    redirect_back(fallback_location: root_path) 
  end
  
  def destroy
    @comment = Comment.find_by id: params["id"]
    if @comment.present?
      @comment.destroy!
    end
    redirect_back(fallback_location: root_path) 
    
  end
  
  private
  def comment_params
    params.require(:comment).permit(:title, :article_id)
  end
end
