class MessagesController < ApplicationController
  def new
    @message = Message.new
  end
  def create
    
    @message = current_user.messages.build(message_params)
    
    @user=@message.user
    
    if @message.save
      respond_to do |format|
       format.json
      end
    else
      redirect_to root_path
    end
    
  end
  private
  def message_params
    params.require(:message).permit(:message,:user_id).merge(params[:teacher_id])
  end

end
