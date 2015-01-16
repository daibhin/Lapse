class Snippet < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order(created_at: :asc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 5000 }
  validates :title, presence: true, length: { maximum: 50 }
end
