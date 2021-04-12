# 理念
私は、使う機会のないアプリは開発時間の無駄であると思っているので、無駄な機能は省き実際に私や仲間が快適に使用するために開発しました。  
今後、改善修正を繰り返し、より良いアプリにしていきます。  

# 製作意図
このアプリは主に学生さんやイラストレーター、デザイナーさんなど様々な方が、  
気軽に自分の個人サイト、作品を掲載できるポートフォリオ作成アプリです。  
portplus+を作ろうと思ったきっかけは、僕は高校生の頃からデザインや絵を描くお仕事をしていたのですが、  
その頃から友人や、仲間が口を揃えて「個人のポートフォリオサイトが欲しいね」と言っていました。  
そのような経緯からポートフォリオを気軽に作成できるアプリは需要があるのではないかと考え作成することになりました。  

# 機能
ユーザー：新規登録 / ログイン機能  
作品：投稿 / 編集 / 削除機能  

# 工夫
・ロゴデザインまで自分で考案  
・トップページに動きをつけた  
・ナビゲーションバーのデザイン  
・シンプルで見やすいレイアウト  
・ユーザー機能の搭載  
・ヘッダー画像による個性の演出ができる  

# 使用技術・フロントエンド
javascript / html / css

# 使用技術・バックエンド
ruby on rails / ruby

# データベース
MySQL / Sequel Pro

# 今後実装したい機能
・いいね機能（人気のユーザーの可視化や鑑賞用のため）
・見本のページを紹介（見本を紹介することで使い方を説明できる）
・メッセージ機能（クリエイター同士のやりとりができる）
・検索機能（ユーザーの検索が可能に）
・お問い合わせフォーム（依頼などが簡単に）




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