# テーブル設計

## Usersテーブル

| Column          | Type   | Options     |
| --------------- | ------ | ----------- |
| email           | string | null: false |
| password        | string | null: false |
| full_name       | string | null: false |
| artist_name     | string | null: false |
| birthday        | date   | null: false |
| genre           | string | null: false |
| profile         | text   | null: false |

### Association
- has_many :works

## Worksテーブル

| Column       | Type          | Options     |
| ------------ | ------------- | ----------- |
| title        | string        | null: false |
| catch_copy   | text          | null: false |
| concept      | text          | null: false |
| user         | reference     | null: false |

### Association
- belong_to :user