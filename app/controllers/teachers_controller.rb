class TeachersController < ApplicationController


  def index
    @elementary = Teacher.category(1)
    @entarance_junior =Teacher.category(2)
    @junior_high = Teacher.category(3)
    @entrance_high = Teacher.category(4)
    @highschool = Teacher.category(5)
    @entrance_exam = Teacher.category(6)
    @arithmatic =Teacher.subject(0)
    @english = Teacher.subject(5)
    @japanese = Teacher.subject(9)
    @mathematic = Teacher.subject(8)
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
  def destroy
    teacher =Teacher.find(params[:id])
    teacher.destroy
    redirect_to root_path,notice: '削除しました'
  end
  def edit
    @teacher =Teacher.find(params[:id])
  end
  def search_child
    respond_to do |format|
      format.html
      format.json do
      @children = Category.find(params[:parent_id]).children
      end
    end
  end
  def search_grandchild
    respond_to do |format|
      format.html
      format.json do
      @grandchildren = Category.find(params[:child_id]).children
      end
    end
  end
  
private
  def teacher_params
    params.require(:teacher).permit(:name,:category_id,:price,:explain,:sex,:subject,:status,:postage,:shipping_date,:prefecture,:university,images_attributes:[:teacher_image,:id])
  end
  
end
