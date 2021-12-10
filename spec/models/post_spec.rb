require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe '投稿の保存' do
    context '投稿が保存できる場合' do
      it "情報が全て入っていれば保存できる" do
        expect(@post).to be_valid
      end
      it "trickが空でも保存できる" do
        @post.trick = ""
        expect(@post).to be_valid
      end
      it "commentが空でも保存できる" do
        @post.comment = ""
        expect(@post).to be_valid
      end
    end
    context '投稿が保存できない場合' do
      it "titleが空では保存できない" do
        @post.title = ""
        @post.valid?
        expect(@post.errors.full_messages).to include "Titleを入力してください"
      end
      it "aimble_fishが空だと保存できない" do
        @post.aimble_fish = ""
        @post.valid?
        expect(@post.errors.full_messages).to include "Aimble fishを入力してください"
      end
      it "おすすめの時間が空だと保存できない" do
        @post.time_zone_id = 1
        @post.valid?
        expect(@post.errors.full_messages).to include "Time zonecan't be blank"
      end
      it "imageが空だと保存できない" do
        @post.image = nil
        @post.valid?
        expect(@post.errors.full_messages).to include "Imageを入力してください"

      end
      it "userが紐づいていないと保存できない" do
        @post.user = nil
        @post.valid?
        expect(@post.errors.full_messages).to include "Userを入力してください"
        
      end
    end
  end
end
