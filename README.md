# README

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|
|password|string||
|email|string||

### Association
- has_many :messages
- has_many :groups, through: :members
- has_many :members

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :messages
- has_many :users, through: :members
- has_many :members

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
|body|text||
|image|string||
|user_id|string|null: false, foreign_key: true|
|group_id|string|null: false, foreign_key: true|
|created_at|timestamp||

## Association
- belongs_to :user
- belongd_to :group