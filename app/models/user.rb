class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :teachers, dependent: :destroy
  has_many :likes,dependent: :destroy
  has_many :clips, dependent: :destroy
  has_many :teachers, through: :clips
  has_many :teachers, through: :likes
  has_many :comments
  mount_uploader :img_name, ImageUploader
  # def already_liked?(teacher)
  #   self.likes.exists?(teacher_id: teacher.id)
  # end
end
