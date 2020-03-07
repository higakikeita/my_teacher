class Image < ApplicationRecord
  mount_uploader :teacher_image, ImageUploader
  belongs_to :teacher, optional: true
end
