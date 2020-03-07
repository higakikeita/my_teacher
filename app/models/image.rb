class Image < ApplicationRecord
  mount_uploader :teacher_image, ImageUploader
  belongs_to :teacher, optional: true
  validates :teacher_image, presence: true
end
