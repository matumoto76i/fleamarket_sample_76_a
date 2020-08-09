# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
# users_table
|column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email   |string|null: false, unipue: true|
|password|string|null: false|
## Association
- has_one :profile
- has_one :user_address
- has_one :card
- has_many :items
- has_many :comments
- has_many :buyer_items, class_name: "Item"
- has_many :saler_items, class_name: "Item"

# profiles_table
|column|Type|Options|
|------|----|-------|
|firsr_name|string|null: false|
|last_name |string|null: false|
|firsr_kana|string|null: false|
|last_kana |string|null: false|
|birthday  |date  |null: false|
|phone     |string|
|user      |references|null: false,foregin_key: true|
## Association
- belongs_to :user

# User_addresses_table
|post_code |integer|null: false|
|prefecture|string|null: false|
|city      |string|null: false|
|address   |string|
|apartment |string|
|phone     |string|
|user      |references|null: false, foregin_key: true|
## Association
- belongs_to :user

# cards_table
|column|Type|Options|
|------|----|-------|
|user_id    |string|null: false, foregin_key: true|
|costomer_id|integer|null: false|
|card_id    |integer|null: false|
## Association
- belongs_to :user

# items_table
|column|Type|Options|
|------|----|-------|
|name       |string|
|description|text|
|price      |integer|
|user       |references|null: false, foregin_key: true|
|category   |references|null: false, foregin_key: true|
|brand      |references|null: false, foregin_key: true|
|state      |references|null: false, foregin_key: true|
|cost       |references|null: false, foregin_key: true|
|region     |references|null: false, foregin_key: true|
|period     |references|null: false, foregin_key: true|
|buyer      |references|foregin_key: {to_table: :users}|
|saler      |references|foregin_key: {to_table: :users}|
## Association
- belongs_to :user
- belongs_to :category
- belongs_to :brand
- belongs_to :state
- belongs_to :cost
- belongs_to :period
- belongs_to :region
- belongs_to :buyer, class_name: "User", foregin_key: "buyer_id"
- belongs_to :saler, class_name: "User", foregin_key: "saler_id"
- has_many :images
- has_many :comments

# categories_table
|column|Type|Options|
|------|----|-------|
|name  |string|null: false|
## Association
- has_many :items

# brands_table
|column|Type|Options|
|------|----|-------|
|name|string|null: false|
## Association
- has_many :items

# images_table
|column|Type|Options|
|------|----|-------|
|image|string|
|item |references|null: false, foregin_key: true|
## Association
- belongs_to :item

# states_table
|column|Type|Options|
|------|----|-------|
|state |string|null: false|
## Association
- has_many :items

# costs_table
|column|Type|Options|
|------|----|-------|
|cost|string|null: false|
## Association
- has_many :items

# regions_table
|column|Type|Options|
|------|----|-------|
|region|string|null, false|
## Association
- has_many :items

# periods_table
|column|Type|Options|
|------|----|-------|
|period|string|null: false|
## Association
- has_many :items

# comments_table
|column|Type|Options|
|------|----|-------|
|text|text|
|user|references|null: false, foregin_key: true|
|item|references|null: false, foregin_key: true|
## Association
- has_many :user
- has_many :item


* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
