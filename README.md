# README
# 家庭教師派遣センターのwebサイトになります。
## 自分に合った講師を探すことが出来ます
## トップ画面
[![Image from Gyazo](https://i.gyazo.com/0654ab59c02fe8bd97ef7811ed4c8704.png)](https://gyazo.com/0654ab59c02fe8bd97ef7811ed4c8704)
## 新規登録画面
プロフィール画像プレビュー実装
[![Image from Gyazo](https://i.gyazo.com/4c2ac648fff7a0a6c702a8f1f4635fe1.gif)](https://gyazo.com/4c2ac648fff7a0a6c702a8f1f4635fe1)
## ログイン画面
[![Image from Gyazo](https://i.gyazo.com/0cead03d3fb2c35088b14b777ebdc4f4.png)](https://gyazo.com/0cead03d3fb2c35088b14b777ebdc4f4)
## 講師一覧画面

## 講師登録画面
[![Image from Gyazo](https://i.gyazo.com/c872908a92f0201c4ed5a80e72c97488.gif)](https://gyazo.com/c872908a92f0201c4ed5a80e72c97488)
## 講師情報詳細画面
## マイページ
[![Image from Gyazo](https://i.gyazo.com/4dc2eaceeae82d940ee9674405d14212.gif)](https://gyazo.com/4dc2eaceeae82d940ee9674405d14212)
# サイトURL

http://13.112.152.26/
## Basic 認証
ユーザー名　admin
パスワード　0322
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
-belongs_to : user<br>
-has_many :images<br>
-has_many : likes<br>

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|teacher|references|null: false, foreign_key: true|
|teacher_image|text|null: false|
### Association
-belongs_to :teacher

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

### Association
-has_many: teachers<br>
-has_many: likes<br>

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|product|references|null: false, foreign_key: true|

### Association
 -belongs_to : user<br>
 -belongs_to : product <br>
