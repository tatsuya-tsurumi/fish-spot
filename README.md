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
| messege           | text       | null: false                   |
| user              | references | null: false foreign_key: true |
| item              | references | null: false foreign_key: true |


belongs_to :user
belongs_to :post





