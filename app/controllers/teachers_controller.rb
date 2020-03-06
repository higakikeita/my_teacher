class TeachersController < ApplicationController
before_action :set_teacher,only: [:index,:show]

  def index
      
  end

  def new
    @teacher = Teacher.new
    
  end
  def create
    
    @teacher = Teacher.new(teacher_params)
    @teacher.save
    redirect_to root_path
  end
  def show
  end
  
private
  def teacher_params
    params.require(:teacher).permit(:name,:category_id,:price,:explain,:sex,:brand_id,:status,:postage,:shipping_date,:prefecture,:university)
  end
  def set_teacher
    @teacher = Teacher.find(params[:id])
  end
end
