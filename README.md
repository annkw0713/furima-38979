# テーブル設計

## usersテーブル

| Column          | Type   | Options             |
| --------------- | ------ | ------------------- |
| email           | string | null: false, unique |
| password        | string | null: false         |
| nickname        | string | null: false         |
| last_name       | string | null: false         |
| first_name      | string | null: false         |
| last_name_kana  | string | null: false         |
| first_name_kana | string | null: false         |
| birthday        | string | null: false         |

### Association

- has_many :items
- has_many :orders

## itemsテーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| item_name        | string     | null: false                    |
| item_description | text       | null: false                    |
| category         | string     | null: false                    |
| item_condition   | string     | null: false                    |
| shipping_fee     | string     | null: false                    |
| shipping_area    | string     | null: false                    |
| shipping_days    | string     | null: false                    |
| price            | string     | null: false                    |
| user             | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :orders

## commentsテーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| address   | string     | null: false                    |
| user      | references | null: false, foreign_key: true |
| item      | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item