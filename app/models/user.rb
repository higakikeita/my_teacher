class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :teachers
  has_many :likes
  mount_uploader :img_name, ImageUploader
  def already_liked?(teacher)
    self.likes.exists?(teacher_id: teacher.id)
  end
end
