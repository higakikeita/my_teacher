class LikesController < ApplicationController
  def create
    @like = current_user.likes.create(teacher_id: params[:teacher_id])
  end
  def destroy
    @like = Like.find_by(teacher_id: params[:teacher_id], user_id: current_user.id)
    @like.destroy
  end
end
