class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
  end
  # def likes
  #   @user = User.find_by(id: params[:id])
  #   @likes = Like.where(user_id:@user.id)
  # end
end
