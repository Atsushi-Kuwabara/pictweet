# 概要
写真投稿型SNS(Rails練習用アプリケーション)

# DB設計

## users Table
|Column|Type|Option|
|------|----|------|
|id|integer|null:alse|
|nickname|string|null:false|
|email|string|null:false|
|password|string|null:false|

### Association
- has_many :tweets
- has_many :comments

## tweets Table
|Column|Type|Option|
|------|----|------|
|id|integer|null:false|
|text|text||
|image|text||
|created_at|datetime|null:false|

### Association
- belongs_to :user
- has_many :comments

## comments Table
|Column|Type|Option|
|------|----|------|
|id|integer|null:false|
|user_id|integer|null:false, foreign_key: true|
|tweet_id|integer|null:false, foreign_key: true|
|text|text|null:false|
|created_at|datetime|null:false|

### Association
- belongs_to :tweet
- belongs_to :user
