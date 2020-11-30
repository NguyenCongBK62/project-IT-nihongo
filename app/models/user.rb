class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :articles, dependent: :destroy
  has_one_attached :avatar
  has_many :followers, dependent: :destroy

  def feed
    part_of_feed = "articles.user_id = :id"
    Article.where(part_of_feed, { id: id })
  end
  
  def total_follower
    Follower.where(follower_id: self.id).count
  end
  
  def total_following
   Follower.where(following_id: self.id).count
  end

end
