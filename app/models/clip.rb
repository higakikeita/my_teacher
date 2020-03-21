class Clip < ApplicationRecord
  belongs_to :user
  belongs_to :teacher
  validates :user_id, uniqueness: { scope: :teacher_id }
end
