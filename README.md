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

## テーブル設計

## usersテーブル

| Colum                           | Type   |Options                    |
| --------------------------------| ------ | ------------------------- |
| email                           | string | null: false, unique: true |
| encrypted_password              | string | null: false               |
| encrypted_password_confirmation | string | null: false               |
| nickname                        | string | null: false               |
| last_name                       | string | null: false               |
| first_name                      | string | null: false               |
| birthday                        | date   | null: false               |

has_many :posts
has_many :messages

## postsテーブル

| Colum              | Type       |Options                        |
| -------------------| -----------| ----------------------------- |
| title              | string     | null: false                   |
| aimable_fish       | string     | null: false                   |
| time_zone          | integer    | null: false                   |
| trick              | string     | null: false                   |
| comment            |text        |null: false                    |
| user               | references | null: false foreign_key: true |

belongs_to :user
has_many :messages

## messagesテーブル
| Colum             | Type       |Options                        |
| ------------------| ---------- | ----------------------------- |
| message           | text       | null: false                   |
| user              | references | null: false foreign_key: true |
| post              | references | null: false foreign_key: true |


belongs_to :user
belongs_to :post

# アプリケーション名
　 地図機能


-  <span style="font-family: cursive">fish spot</span>

# アプリケーション概要
- 釣りスポットを共有し、ユーザー同士でよく釣れる場所（スポット）の共有がきます。またチャット内で自分の釣った魚を共有できたり、魚の大群が来ていて今来たら釣れる等の情報を共有できます。

# URL
 - https://fish-spot.herokuapp.com/

 # テスト用アカウント
 - メールアドレス：test@com  
   パスワード:aa0000
    
# 利用方法
  1. トップページヘッダー部より新規登録を行います。
  2. 新規投稿でスポットの登録を行うことができます。
  3. トップページ中央部より登録されているスポットを押すと詳細ページへ遷移できます。「スポット一覧」を押すと一覧が表示されます。タイトルを押すと詳細ページへ遷移します。
  4. 詳細ページよりログイン状態であればチャットルームへ遷移できます。
  5. チャットルームでの情報交換ができます。

# アプリケーションを作成した背景
- 周りの友人で釣りが好きな人がおり、八戸では釣りの情報を共有できるアプリケーションがないため作成依頼を受けました。釣りで重要になるのは魚が集まる時間や釣れる場所（スポット）選びが重要で狙い目の時間はその日の天候や時期によって様々です。そのため釣れる場所（スポット）を共有できる投稿機能を実装しました。またスポット内でチャット機能を設ける事により釣れている状況を共有できるようにしました。

# 洗い出した要件
[要件定義シート](https://docs.google.com/spreadsheets/d/1sHA_2kzIuJrfg4rmvsIT7V1_RvSqjYPylFyNhXLlsoE/edit#gid=982722306)

# 実装した機能のGIF
[![Image from Gyazo](https://i.gyazo.com/998a0a1874fd5f86a6a703d160032822.gif)](https://gyazo.com/998a0a1874fd5f86a6a703d160032822)

- トップページ、ヘッダー部にログイン状態を表すため「ログイン者」さんとしています。  
- メイン上部にはスポットの参考写真を添付しています。4枚のスライドが5秒毎に流れます。
- メイン中央に簡単に特徴を説明しています。
- メイン中央に最新の投稿を2つ載せており、全て見る場合は投稿一覧を押せるようにしています。
- メイン下部にMapを置きMapから情報ウィンドウを開き、「詳細はこちら」を押すと詳細ページに遷移します。
- フッターは投稿一覧へ遷移できるボタンと画面上部に戻れるボタンを置いています。

# 実装予定の機能

- 今後マイページ機能、お気に入り機能、メッセージ通知機能、天気機能、潮位機能を実装予定です。
1. マイページ機能  
    ログイン者の情報を管理するためログイン者の過去投稿、お気に入り、登録情報を見れるように実装予定です。

2. お気に入り機能  
    好きなスポット情報をすぐ見れるようお気に入り登録・削除・一覧表示ができるように実装予定です。

3. メッセージ通知機能  
    よりスピーディーに情報交換が行えるよう登録されているメールアドレス宛にメッセージが通知されるよう実装予定です。  
    通知はOFFに設定できるように実装予定です。

4. 天気機能  
    釣りは天気も重要になってくるため登録されているスポットの天気情報を実装予定です。

5. 潮位機能  
    釣りは潮の流れも重要となるため登録されているスポットの潮位情報を実装予定です。

# データベース設計
- 現在実装済みの物のみになります。
[![Image from Gyazo](https://i.gyazo.com/2389b90edfac6a4247ab4423a4253988.png)](https://gyazo.com/2389b90edfac6a4247ab4423a4253988)

# 画面遷移図
- 現在実装済みの物のみになります。
[![Image from Gyazo](https://i.gyazo.com/907dd7b01600912e3c0d3b80f173e333.png)](https://gyazo.com/907dd7b01600912e3c0d3b80f173e333)

# 開発環境
- フロントエンド：HTML,CSS/JAvaScript
- バックエンド：Ruby(c2.6.5)
- インフラ：AWS,MySQL
- テスト：Rspec
- テキストエディタ：Visual Studio Code
- タスク管理：GitHubプロジェクトボード

# ローカルでの動作確認方法
- % git clone https://github.com/tatsuya-tsurumi/fish-spot.git
- % cd fish-spot.git
- % bundle install
- % yarn install



