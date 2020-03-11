# README
# 家庭教師派遣センターのwebサイトになります。
# 自分に合った講師を探すことが出来ます

[![Image from Gyazo](https://i.gyazo.com/0654ab59c02fe8bd97ef7811ed4c8704.png)](https://gyazo.com/0654ab59c02fe8bd97ef7811ed4c8704)

# サイトURL

http://13.112.152.26/

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

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|ancestry|string||

### Association
- has_many : teachers
## users テーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique:true|
|password|string|null: false|
|avatar|text||
|self_introduction|string||
|sex|integer|null: false|
|imag_name|date|null: false|
