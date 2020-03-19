class UsersController < ApplicationController
  before_action :set_clips 
  def show
    @user = User.find_by(id: params[:id])
    @clip= Clip.new
    @clips = @user.clips.includes(:teacher).all
  end
  # def likes
  #   @user = User.find_by(id: params[:id])
  #   @likes = Like.where(user_id:@user.id)
  # end
  private
  def set_clips
    @teacher = Teacher.find(params[:id])
    @clips = Clip.where(teacher_id: @teacher.id).all
    
  end
end

