class Like < ApplicationRecord
  belongs_to :teacher
  belongs_to :user
  validates :user_id, uniqueness: { scope: :teacher_id }
end
