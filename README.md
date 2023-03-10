# テーブル設計

## usersテーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| nickname           | string | null: false               |
| last_name          | string | null: false               |
| first_name         | string | null: false               |
| last_name_kana     | string | null: false               |
| first_name_kana    | string | null: false               |
| birthday           | date   | null: false               |

### Association

- has_many :items
- has_many :orders

## itemsテーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| item_name         | string     | null: false                    |
| item_description  | text       | null: false                    |
| category_id       | integer    | null: false                    |
| item_condition_id | integer    | null: false                    |
| shipping_fee_id   | integer    | null: false                    |
| shipping_area_id  | integer    | null: false                    |
| shipping_days_id  | integer    | null: false                    |
| price             | integer    | null: false                    |
| user              | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :order
- extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :item_condition
  belongs_to :shipping_fee
  belongs_to :shipping_area
  belongs_to :shipping_days

## ordersテーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| user      | references | null: false, foreign_key: true |
| item      | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- belongs_to :address

## addressテーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| credit_card_number | string     | null: false                    |
| expiration_date    | date       | null: false                    |
| security_code      | string     | null: false                    |
| post_code          | string     | null: false                    |
| prefecture_id      | integer    | null: false                    |
| municipalities     | string     | null: false                    |
| address            | string     | null: false                    |
| building_name      | string     |                                |
| phone_number       | string     | null: false                    |

### Association

- belongs_to :order