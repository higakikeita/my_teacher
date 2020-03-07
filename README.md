# README
# 家庭教師派遣センターのwebサイトになります。
# 自分に合った講師を探すことが出来ます

[![Image from Gyazo](https://i.gyazo.com/41fe34ff72cb4c869f590b5ea05811fd.png)](https://gyazo.com/41fe34ff72cb4c869f590b5ea05811fd)



* Ruby version 2.5.1

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
## teachersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string(191)|null: false, index: true|
|explain|text|null: false|
|style|integer|null: false|
|prefecture|integer|null: false| 
|sex|string|null: false| 
|career|string|null: false|
|university|references|null: false, foreign_key: true|
|category_id|integer|
|subject|integer|
|user|references|index: true, foreign_key: true|
### Association
has_many :images

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|teacher|references|null: false, foreign_key: true|
|teacher_image|text|null: false|
### Association
belongs_to :teacher
