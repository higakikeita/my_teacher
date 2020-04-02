class UsersController < ApplicationController
  # before_action :set_clips 

  before_action :set_ransack
  def index
    @users = User.all
    @q        = Teacher.ransack(params[:q])
    @teachers = @q.result(distinct: true)
    @users = User.page(params[:page]).per(3)
  end
  def show
    @user = User.find_by(id: params[:id])
    @clip= Clip.new
    @clips = @user.clips.includes(:teacher).all
    @message =Message.new
    @messages =@user.messages.includes(:teacher).page(params[:page]).per(3) 
    
  end
  def set_ransack
    @q        = Teacher.ransack(params[:q])
  end
end

