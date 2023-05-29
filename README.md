

## users テーブル

|          Column        |    Type   |            Options             |
| ------------------     | --------- | ------------------------------ |
| nickname               | string    | null: false,                   |
| email                  | string    | null: false,  unique: true     |
| encrypted_password     | string    | null: false,                   |
| family_name            | string    | null: false,                   |
| first_name             | string    | null: false,                   |
| family_name_katakana   | string    | null: false,                   |
| first_name_katakana    | string    | null: false,                   |
| birthday               | date      | null: false,                   |


### Association
has_many :items
belongs_to :purchase
has_one :management





## items テーブル

|          Column        |    Type    |            Options               |
| ---------------------  | ---------- | ------------------------------   |
| name                   | string     | null: false,                     |
| price                  | integer    | null: false,                     |
| description            | text       | null: false,                     |
| condition_id           | integer    | null: false,                     |
| shipping_charge_id     | integer    | null: false,                     |
| area_id                | integer    | null: false,                     |
| delivery_time_id       | integer    | null: false,                     |
| user                   | references | null: false,  foreign_key: true  |
| category_id            | integer    | null: false,  foreign_key: true  |


### Association
belongs_to :user





##  purchases テーブル

|          Column         |    Type   |            Options               |
| ---------------------   | --------- | ------------------------------   |
| zip_code                | string    | null: false,                     |
| area_id                 | integer   | null: false,                     |
| city                    | string    | null: false,                     |
| address                 | string    | null: false,                     |
| building_name           | string    | null: false,                     |
| phone_number            | string    | null: false,                     |          


### Association
belongs_to :user
belongs_to :item






## managements テーブル

|       Column        |     Type      |              Options               |
| ------------------  | ------------- | ---------------------------------- |
| user                | references    | null: false,  foreign_key: true    |
| item                | references    | null: false,  foreign_key: true    |



### Association
belongs_to :user