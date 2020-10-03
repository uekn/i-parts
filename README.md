# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :posts
- has_many :comments

## posts テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| title  | string | null: false |
| content| string | null: false |
| figure | string | null: false |
|schedule| string | null: false |

### Association

- belongs_to :user
- has_many :post_tags
- has_many :tags, through: post_tagss
- has_many :comments

## tags テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :post_tags
- has_many :posts, through: post_tags

## post_tags テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| post   | references | null: false, foreign_key: true |
| tag    | references | null: false, foreign_key: true |

### Association

- belongs_to :post
- belongs_to :tag

## comments テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| post    | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :post