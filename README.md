

## users テーブル

|          Column        |    Type   |            Options             |
| ------------------     | --------- | ------------------------------ |
| nickname               | string    | null: false,                   |
| email                  | string    | null: false,  unique: true     |
| user_password          | string    | null: false,  unique: true     |
| user_image             | string    |                                |
| family_name            | string    | null: false,                   |
| first_name             | string    | null: false,                   |
| family_name_katakana   | string    | null: false,                   |
| first_name_katakana    | string    | null: false,                   |
| birthday               | date      | null: false,                   |


### Association
has_many      :items dependent: :destroy
orders        :purchases dependent: :destroy
has_one       :card dependent: :destroy




## card テーブル

|       Column        |     Type      |              Options               |
| ------------------  | ------------- | ---------------------------------- |
| user_id             | integer       | null: false,    foreign_key: true  |
| customer            | string        | null: false,                       |
| card                | string        | null: false,                       |


### Association
belongs_to :users dependent: :destroy





## items テーブル

|          Column        |    Type   |            Options               |
| ---------------------  | --------- | ------------------------------   |
| name                   | string    | null: false,                     |
| image                  | string    | null: false,                     |
| price                  | string    | null: false,                     |
| description            | string    |                                  |
| shipping_charges       | string    | null: false,                     |
| ares                   | string    | null: false,                     |
| delivery_time          | string    | null: false,                     |
| user_id                | integer   | null: false,  foreign_key: true  |
| category_id            | integer   | null: false,  foreign_key: true  |



### Association
belongs_to   :user dependent: :destroy
has_many     :images dependent: :destroy
belongs_to   :categories dependent: :destroy



## images テーブル

|       Column        |     Type      |              Options               |
| ------------------  | ------------- | ---------------------------------- |
| image               | string        | null: false,                       |
| orders_id           | integer       | null: false,    foreign_key: true  |



### Association
belongs_to :items




## categories テーブル

|       Column        |     Type      |     Options      |
| ------------------  | ------------- | ---------------- |
| name                | string        | null: false,     |
| ancestry            | string        |                  |



### Association
has_many :items





##  purchases テーブル

|          Column         |    Type   |            Options               |
| ---------------------   | --------- | ------------------------------   |
| family_name             | string    | null: false,                     |
| first_name              | string    | null: false,                     |
| family_name_katakana    | string    | null: false,                     |
| first_name_katakana     | string    | null: false,                     |
| zip_code                | string    | null: false,                     |
| prefecture              | string    | null: false,                     |
| city                    | string    | null: false,                     |
| address                 | string    | null: false,                     |
| building_name           | string    | null: false,                     |
| user_id                 | integer   | null: false,  foreign_key: true  |


### Association
belongs_to   :user 

