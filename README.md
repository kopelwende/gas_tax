# README

## アプリケーション名
ガソリンダイエット

## アプリケーション概要
ガソリンの値段を共有。その地域の最高値最安値を表示するとともに、支払った暫定税率を表示する。<br>
主に自動車ユーザーの生活防衛のために、最適な給油所の選択とガソリンに過剰にかけられている税金の不毛さを知ってもらう。

## URL
https://github.com/kopelwende/gas_tax

## 利用方法
利用したガソリンの総額、リッターを記入する。すると、その地域の最高値、最安値と比較でき、また、支払った税金の額が表示される。

アプリケーションを作成した背景 | 総じて物価が高騰傾向にある昨今、特にガソリンの値段が高止まりしている。生活防衛のために少しでも安い給油所を探すとともに、過剰にかけられている税金を知ってもらう必要があると感じたため。

## 洗い出した要件
https://docs.google.com/spreadsheets/d/1A3dSeg2dQiXbl5ZH7g91a5JEhDS9tfKk6_zDE3k1Vbk/edit#gid=982722306

## 開発環境 
Ruby on rails, Render

## E-R図
https://drive.google.com/drive/my-drive

## 工夫したポイント
まずは必要最小限度を作ってリリースする。その後適宜拡張していく作りにした。<br>
アプリの性格上、使用するごとに計算が増えていく、また将来の拡張性を考慮して、どの値をデータベースに保存するのか考えるのが大変だった。



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
- belongs_to :month_gassolines_ago
- belongs_to :total_gassolines_ago



## month_gassolines_ago テーブル

| Column                                    | Type       | Options                       |
| ------------------------------------------| -----------| ----------------------------- |
| date                                      | date       | null: false foreign_key: true |
| prefectures_id                            | integer    | null: false foreign_key: true |
| municipality                              | string     | null: false foreign_key: true |
| gas_station                               | string     | null: false foreign_key: true |
| month_price                               | integer    | null: false                   |
| month_liter                               | integer    | null: false                   |
| month_ave_price                           | integer    | null: false                   |
| month_highest_price                       | integer    | null: false                   |
| month_cheapest_price                      | integer    | null: false                   |
| month_addition_provisional_gaso_tax       | integer    | null: false                   |
| month_gaso_tax                            | integer    | null: false                   |


### Association
- has_many :gasolines
- belongs_to :total_gassolines_ago



## total_gassolines_ago テーブル

| Column                                 | Type       | Options                       |
| ---------------------------------------| -----------| ----------------------------- |
| date                                   | date       | null: false foreign_key: true |
| prefectures_id                         | integer    | null: false foreign_key: true |
| municipality                           | string     | null: false foreign_key: true |
| gas_station        　　　　　            | string     | null: false foreign_key: true |
| total_liter                            | integer    | null: false                   |
| total_price                            | integer    | null: false                   |
| total_ave_price                        | integer    | null: false                   |
| total_highest_price                    | integer    | null: false                   |
| total_cheapest_price                   | integer    | null: false                   |
| total_addition_provisional_gaso_tax    | integer    | null: false                   |
| total_gaso_tax                         | integer    | null: false                   |

### Association
- has_many :gasolines
- has_many :month_gassolines_agos