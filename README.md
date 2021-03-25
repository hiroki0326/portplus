# portplus+
このアプリは主に学生さんやイラストレーター、デザイナーさんなど様々な方が、
気軽に自分の個人サイト、作品を掲載できるポートフォリオ作成アプリです。
portplus+を作ろうと思ったきっかけは、僕は高校生の頃からデザインや絵を描くお仕事をしていたのですが、
その頃から同業の友人や、仲間が口を揃えて「個人のポートフォリオサイトが欲しいね」と言っていました。
そのような経緯からポートフォリオを気軽に作成できるアプリは需要があるのではないかと考え作成することになりました。



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