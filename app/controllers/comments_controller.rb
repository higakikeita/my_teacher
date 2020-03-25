class CommentsController < ApplicationController
  before_action :set_teacher
  def new
    @comment = Comment.new
  end
  def create
    @comment = @teacher.comments.new(comment_params)
    @teacher =@comment.teacher
    
    @comment.save
      
    
  end
  private
    def comment_params
      params.require(:comment).permit(:comment,:teacher_id).merge(user_id: current_user.id)
    end
  def set_teacher
    @teacher = Teacher.find(params[:teacher_id])
  end 
end
