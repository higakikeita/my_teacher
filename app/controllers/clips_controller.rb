class ClipsController < ApplicationController
  def create
    @user_id = current_user.id
    @teacher_id = Teacher.find(params[:id]).id
    @clip = Clip.new(teacher_id: @teacher_id, user_id: @user_id)
  
    if @clip.save
      redirect_to user_path(current_user)
    end
  end
  def destroy
    @clip = Clip.find(params[:id])
    if @clip.destroy
      redirect_to user_path(current_user)
    end
  end
end
