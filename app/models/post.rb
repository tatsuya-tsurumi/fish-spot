class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :messages
  

  validates :image, presence: true
  validates :title, presence: true
  validates :aimble_fish, presence: true
  validates :time_zone_id, numericality: { other_than: 1 ,message: "を選択してください"} 
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :time_zone
end
