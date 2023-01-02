class Like < ApplicationRecord
  belongs_to :user
  belongs_to :micropost
  validates :micropost_id, presence: true
  validates :user_id, presence: true
  validates :user_id, uniqueness: {scope: :micropost_id}
end
