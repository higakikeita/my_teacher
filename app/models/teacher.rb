class Teacher < ApplicationRecord
  enum university: {"東京大学": 0, "千葉大学": 1, "早稲田大学": 2, "慶応大学": 3, "上智大学": 4, "明治大学": 5, "立教大学": 6, "中央大学": 7, "法制大学": 8, "東京理科大学": 9}

enum subject: {"小学算数": 0, "小学国語": 1, "小学理科、社会": 2, "中学受験算数": 3, "中学受験国語": 4, "中学生英語": 5, "中学生国語": 6, "中学生数学": 7, "大学受験数学": 8, "大学受験英語": 9}
enum sex: {"学生(男)":0,"学生(女)":1,"社会人(男)":2,"社会人(女)":3}

has_many :images, dependent: :destroy
belongs_to :user
accepts_nested_attributes_for :images, allow_destroy: true
belongs_to :category
has_many :likes, -> { order(created_at: :desc) }, dependent: :destroy
has_many :comments,dependent: :destroy
has_many :clips
has_many :users, through: :clips
has_many :users, through: :likes
has_many :messages
def liked_by(current_user)
  # user_idが一致するlikeを検索する
  Like.find_by(user_id: current_user.id)
end
def cliped_by(current_user)
  # user_idが一致するclipを検索する
  Clip.find_by(user_id: current_user.id)
end
scope :category, ->(category_id) {where(category_id: category_id).order(created_at: "DESC").limit(10)}
scope :subject, ->(subject) {where(subject: subject).order(created_at: "DESC").limit(10)}
extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  
end
