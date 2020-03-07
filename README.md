# README
# 家庭教師派遣センターのwebサイトになります。
# 自分に合った講師を探すことが出来ます

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

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
