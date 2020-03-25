class MessagesController < ApplicationController
  def new
    @message = Comment.new
  end
  def create
    @message=@user.messages.new(message_params)
    @user=@message.user
    @message.save
  end
  private
  def message_params
    params.require(:message).permit(:message,:user_id).merge(:teacher_id)
  end

end
