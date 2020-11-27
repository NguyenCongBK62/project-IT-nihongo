class Article < ApplicationRecord
    belongs_to :user
    has_one_attached :images
    default_scope -> { order(created_at: :desc) }
end
