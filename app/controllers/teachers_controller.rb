class TeachersController < ApplicationController
before_action :set_teacher,only: [:index,:show]

  def index
      
  end

  def new
    @teacher = Teacher.new
    @teacher.images.new
  end
  def create
    
    @teacher = Teacher.new(teacher_params)
    if @product.images.present?
      @teacher.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end
  def show
  end
  
private
  def teacher_params
    params.require(:teacher).permit(:name,:category_id,:price,:explain,:sex,:brand_id,:status,:postage,:shipping_date,:prefecture,:university,images_attributes: [:teacher_image,:_destroy,:id])
  end
  def set_teacher
    @teacher = Teacher.find(params[:id])
  end
end
