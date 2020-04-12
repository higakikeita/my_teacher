class LikesController < ApplicationController
  before_action :authenticate_user!
  def create
    @like = current_user.likes.build(like_params)
    
    @teacher = @like.teacher
    if @like.save
      respond_to :js
    end
  end
  def destroy
    @like = Like.find_by(id:params[:id])
    @teacher = @like.teacher
    if @like.destroy
      respond_to :js
    end
  end
  private
    def like_params
      params.permit(:teacher_id)
    end
end
