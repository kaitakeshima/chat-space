# README

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer||
|name|string|null: false, index: true|
|password|string||
|email|string||

### Association
- has_many :messages
- has_many :groups, through: :members
- belongs_to :member

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer||
|group_name|string|null: false|

### Association
- has_many :messages
- has_many :users, through: :members
- belongs_to :member

## membersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## messages

|Column|Type|Options|
|------|----|-------|
|id|integer||
|body|text|null: false|
|image|string||
|user_id|string|null: false, foreign_key: true|
|group_id|string|null: false, foreign_key: true|
|created_at|timestamp||

## Association
- belongs_to :user
- belongd_to :group