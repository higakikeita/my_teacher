class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :teachers
  has_many :likes, dependent: :destroy
  has_many :liked_teachers, through: :likes, source: :teacher
  mount_uploader :img_name, ImageUploader
end
