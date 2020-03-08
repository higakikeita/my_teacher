class Category < ApplicationRecord
  has_many :teachers
  has_ancestry
end
