class Teacher < ApplicationRecord
  enum university: {"東京大学": 0, "千葉大学": 1, "早稲田大学": 2, "慶応大学": 3, "上智大学": 4, "明治大学": 5, "立教大学": 6, "中央大学": 7, "法制大学": 8, "東京理科大学": 9}

enum subject: {"小学算数": 0, "小学国語": 1, "小学理科、社会": 2, "中学受験算数": 3, "中学受験国語": 4, "中学生英語": 5, "中学生国語": 6, "中学生数学": 7, "大学受験数学": 8, "大学受験英語": 9}
enum sex: {"学生(男)":0,"学生(女)":1,"社会人(男)":2,"社会人(女)":3}
enum prefecture:{
  "北海道":1,"青森県":2,"岩手県":3,"宮城県":4,"秋田県":5,"山形県":6,"福島県":7,
  "茨城県":8,"栃木県":9,"群馬県":10,"埼玉県":11,"千葉県":12,"東京都":13,"神奈川県":14,
  "新潟県":15,"富山県":16,"石川県":17,"福井県":18,"山梨県":19,"長野県":20,
  "岐阜県":21,"静岡県":22,"愛知県":23,"三重県":24,
  "滋賀県":25,"京都府":26,"大阪府":27,"兵庫県":28,"奈良県":29,"和歌山県":30,
  "鳥取県":31,"島根県":32,"岡山県":33,"広島県":34,"山口県":35,
  "徳島県":36,"香川県":37,"愛媛県":38,"高知県":39,
  "福岡県":40,"佐賀県":41,"長崎県":42,"熊本県":43,"大分県":44,"宮崎県":45,"鹿児島県":46,"沖縄県":47
}
has_many :images, dependent: :destroy
belongs_to :user
accepts_nested_attributes_for :images, allow_destroy: true
belongs_to :category
has_many :likes, -> { order(created_at: :desc) }, dependent: :destroy
def liked_by(current_user)
  # user_idが一致するlikeを検索する
  Like.find_by(user_id: current_user.id)
end
scope :category, ->(category_id) {where(category_id: category_id).order(created_at: "DESC").limit(10)}
scope :subject, ->(subject) {where(subject: subject).order(created_at: "DESC").limit(10)}
end
