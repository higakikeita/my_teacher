class Like < ApplicationRecord
  belongs_to :teacher
  belongs_to :user
  validates_uniqueness_of :teacher_id, scope: :user_id
end
