# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## gasolines テーブル

| Column                     | Type       | Options     |
| -------------------------- | -----------| ----------- |
| date                       | date       | null: false |
| prefectures_id             | integer    | null: false |
| municipality               | string     | null: false |
| gas_station                | string     | null: false |
| price                      | integer    | null: false |
| liter                      | integer    | null: false |
| main_gaso_tax              | integer    | null: false |
| provisional_gaso_tax       | integer    | null: false |
| local_main_gaso_tax        | integer    | null: false |
| local_provisional_gaso_tax | integer    | null: false |
| consumption_tax            | integer    | null: false |

### Association
- belongs_to :prefectures_gassolines_ago
- belongs_to :nation_gassolines_ago



## prefectures_gassolines_ago テーブル

| Column                        | Type       | Options                       |
| ------------------------------| -----------| ----------------------------- |
| date                          | date       | null: false foreign_key: true |
| prefectures_id                | integer    | null: false foreign_key: true |
| municipality                  | string     | null: false foreign_key: true |
| gas_station                   | string     | null: false foreign_key: true |
| price                         | integer    | null: false                   |
| liter                         | integer    | null: false                   |
| ave_price                     | integer    | null: false                   |
| highest_price                 | integer    | null: false                   |
| cheapest_price                | integer    | null: false                   |
| addition_provisional_gaso_tax | integer    | null: false                   |
| total_gaso_tax                | integer    | null: false                   |


### Association
- has_many :gasolines
- belongs_to :nation_gassolines_ago



## nation_gassolines_ago テーブル

| Column                        | Type       | Options                       |
| ------------------------------| -----------| ----------------------------- |
| date                          | date       | null: false foreign_key: true |
| prefectures_id                | integer    | null: false foreign_key: true |
| municipality                  | string     | null: false foreign_key: true |
| gas_station                   | string     | null: false foreign_key: true |
| price                         | integer    | null: false                   |
| liter                         | integer    | null: false                   |
| ave_price                     | integer    | null: false                   |
| highest_price                 | integer    | null: false                   |
| cheapest_price                | integer    | null: false                   |
| addition_provisional_gaso_tax | integer    | null: false                   |
| total_gaso_tax                | integer    | null: false                   |

### Association
- has_many :gasolines
- has_many :prefectures_gassolines_agos