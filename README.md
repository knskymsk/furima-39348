

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
has_one  :managements





## items テーブル

|          Column        |    Type    |            Options               |
| ---------------------  | ---------- | ------------------------------   |
| name                   | string     | null: false,                     |
| price                  | integer    | null: false,                     |
| description            | text       | null: false,                     |
| condition              | string     | null: false,                     |
| shipping_charges_id    | integer    | null: false,                     |
| area_id                | integer    | null: false,                     |
| delivery_time_id       | integer    | null: false,                     |
| user                   | references | null: false,  foreign_key: true  |
| category_id            | integer    | null: false,  foreign_key: true  |


### Association
belongs_to   :users 





##  purchases テーブル

|          Column         |    Type   |            Options               |
| ---------------------   | --------- | ------------------------------   |
| zip_code                | string    | null: false,                     |
| area_id                 | integer   | null: false,                     |
| city                    | string    | null: false,                     |
| address                 | string    | null: false,                     |
| building_name           | string    |                                  |
| user_id                 | integer   | null: false,  foreign_key: true  |


### Association
belongs_to :managements





## managements テーブル

|       Column        |     Type      |              Options               |
| ------------------  | ------------- | ---------------------------------- |
| user                | references    | null: false,  foreign_key: true    |
| items               | references    | null: false,  foreign_key: true    |



### Association
belongs_to :users