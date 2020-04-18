# README
<p align="center">
<a href="https://guides.rubyonrails.org/" rel="nofollow"><img src="https://camo.githubusercontent.com/e6318bb26cecc5eaec3548fe7446e2ccc0820afe/68747470733a2f2f71696974612d696d6167652d73746f72652e73332e61702d6e6f727468656173742d312e616d617a6f6e6177732e636f6d2f302f3534333133332f37613663323763642d303963622d623965372d376231622d3163623536646662656530632e706e67" height="60px;" data-canonical-src="https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/543133/7a6c27cd-09cb-b9e7-7b1b-1cb56dfbee0c.png" style="max-width:100%;"></a>
</p>

<p align="center">
<img src="https://user-images.githubusercontent.com/57832553/74001312-78520600-49ae-11ea-9f29-33f42bd75df4.png" height="60px;" style="max-width:100%;">
<img src="https://user-images.githubusercontent.com/57832553/73996999-a29cc700-49a0-11ea-8f87-2ce847edfeea.png" height="60px;" style="max-width:100%;">
<img src="https://user-images.githubusercontent.com/57832553/73933784-96712500-4920-11ea-974f-23b73e2c6113.png" height="60px;" style="max-width:100%;">
<img src="https://user-images.githubusercontent.com/57832553/73936026-3cbf2980-4925-11ea-97b2-274bd60a8fb5.png" height="60px;" style="max-width:100%;">
<img src="https://user-images.githubusercontent.com/57832553/73935917-fec20580-4924-11ea-9b42-36715e8d4ede.png" height="60px;" style="max-width:100%;">

# 家庭教師派遣センターのwebサイト
## 生徒側からの機能
### 特徴その１
 生徒にマッチした講師を探すことが出来ます
### 特徴その２
それぞれのユーザーの情報を見ることが出来ます
ユーザー同士でリアルタイムチャットができます
## 講師側からの機能
講師登録が出来ます。<br>
自分の都合の良い日を登録出来ます
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
## バージョン情報
* Ruby version 2.5.1<br>
  Ruby on rails 5.0.7.2<br>
  MySQl 5.3<br>
  AWS EC2 x S3

## サーバデプロイ
Nginx x Capistrono




## DB設計


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
-has_many :likes<br>
-has_many :clips<br>
-has_many :comments<br>
-has_many :messages

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
-has_many: clips<br>
-has_many: comments<br>
-has_many: messages

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|teacher|references|null: false, foreign_key: true|

### Association
 -belongs_to : user<br>
 -belongs_to : teacher <br>

### Clipテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|teacher|references|null: false, foreign_key: true|
### Association
 -belongs_to : user<br>
 -belongs_to : teacher <br>
### commentテーブル
|Column|Type|Options|
|------|----|-------|
|comment|text|
|user|references|null: false, foreign_key: true|
|teacher|references|null: false, foreign_key: true|
### Association
-belongs_to : user<br>
-belongs_to : teacher <br>

### messageテーブル

|Column|Type|Options|
|------|----|-------|
|message|text|
|user|references|null: false, foreign_key: true|
|teacher|references|null: false, foreign_key: true|
### Association
-belongs_to : user<br>
-belongs_to : teacher <br>
## chatroomテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|
### Association
-has_many :chat_messages<br>
-has_many :chat_room_users

## chat_room_userテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|
|chat_room_id|integer|
|user_id|integer|

### Association
-belongs_to :chat_room<br>
-belongs_to :user
## chat_message
|Column|Type|Options|
|------|----|-------|
|id|integer|
|chat_room_id|integer|
|user_id|integer|
|message|string|

### Association
-belongs_to :chat_room<br>
-belongs_to :user
