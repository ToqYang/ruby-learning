class Comment < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  belongs_to :post, foreign_key: 'post_id'

  validates :body, presence: true
  validates :title, uniqueness: true, presence: true
  validates :user_id, presence: true
  validates :post_id, presence: true
end
