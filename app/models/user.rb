class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :articles, dependent: :destroy
  has_one_attached :avatar
  def feed
    part_of_feed = "articles.user_id = :id"
    Article.where(part_of_feed, { id: id })
  end
end
