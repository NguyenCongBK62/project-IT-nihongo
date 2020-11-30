class Article < ApplicationRecord
    belongs_to :user
    has_many_attached :images
    has_many :comments, dependent: :destroy
    default_scope -> { order(created_at: :desc) }
end
