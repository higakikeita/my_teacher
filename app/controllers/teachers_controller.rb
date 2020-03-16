class TeachersController < ApplicationController
before_action :set_teacher, only: [:show,:edit,:update]

  def index
    @elementary = Teacher.category(1)
    @entrance_junior =Teacher.category(2)
    @junior_high = Teacher.category(3)
    @entrance_high = Teacher.category(4)
    @highschool = Teacher.category(5)
    @entrance_exam = Teacher.category(6)
    @arithmatic =Teacher.subject(0)
    @english = Teacher.subject(5)
    @japanese = Teacher.subject(9)
    @mathematic = Teacher.subject(8)
    @all_ranks = Teacher.find(Like.group(:teacher_id).order('count(teacher_id) desc').limit(3).pluck(:teacher_id))
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
    @like=Like.new
  end
  def destroy
    teacher =Teacher.find(params[:id])
    teacher.destroy
    redirect_to root_path,notice: '削除しました'
  end
  def edit
    
  end
  def update
    
    if @teacher.update(update_params)
      redirect_to teacher_path
    else
      render :edit
    end

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
    params.require(:teacher).permit(:name,:category_id,:price,:explain,:sex,:subject,:prefecture,:university,images_attributes:[:teacher_image,:id]).merge(user_id: current_user.id)
  end
  def update_params
    params.require(:teacher).permit(:name, :explain,:sex, :university, :category_id, :status,:category_id, :prefecture,:subject, :user_id, images_attributes: [:teacher_image, :id])
  end
  def set_teacher
    @teacher = Teacher.find(params[:id])
  end 
  
end
