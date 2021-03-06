class ClipsController < ApplicationController
  before_action :set_ransack
  def index
    @user = current_user
    @clips = Clip.where(user_id: @user.id).all
  end
  def create
    @user_id = current_user.id
    @teacher_id = Teacher.find(params[:id]).id
    @clip = Clip.new(teacher_id: @teacher_id, user_id: @user_id)
    @teacher =@clip.teacher
    if @clip.save
      redirect_to teacher_clips_path(current_user)
    end
  end
  def destroy
    
    @clip = Clip.find_by(teacher_id:params[:teacher_id],user_id: current_user.id)
    @teacher=@clip.teacher
    if @clip.destroy
      
      redirect_to teachers_path,notice: '削除しました'
    end
  end
  def show_clips
    @teacher = Teacher.find(params[:id])
    @clips = Clip.where(teacher_id: @teacher.id).all
    
  end
  def set_ransack
    @q        = Teacher.ransack(params[:q])
  end
end
