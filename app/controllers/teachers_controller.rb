class TeachersController < ApplicationController


  def index
    @teachers=Teacher.all
  end

  def new
    @teacher = Teacher.new
    @teacher.images.new
  end
  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.images.present?
    @teacher.save
    
      redirect_to teachers_path
    
      
    else
      redirect_to root_path
    
    end
  end
  def show
    @teacher = Teacher.find(params[:id])
  end
  def search_child
    respond_to do |format|
      format.html
      format.json do
        @children = Category.find(params[:parent_id]).children
      end
    end
  end
  
private
  def teacher_params
    params.require(:teacher).permit(:name,:category_id,:price,:explain,:sex,:brand_id,:status,:postage,:shipping_date,:prefecture,:university,images_attributes:[:teacher_image,:id])
  end
  
end
