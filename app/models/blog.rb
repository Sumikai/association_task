class Blog < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :content, length: { in: 1..140 }
  
  #アソシエーション
  belongs_to :user, foreign_key: "user_id"
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
end
