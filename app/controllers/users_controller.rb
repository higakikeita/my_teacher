class UsersController < ApplicationController
  # before_action :set_clips 
  def index
    
  end
  def show
    @user = User.find_by(id: params[:id])
    @clip= Clip.new
    @clips = @user.clips.includes(:teacher).all
    @message =Message.new
    @messages =@user.messages.includes(:teacher).all
    
  end
  
end

