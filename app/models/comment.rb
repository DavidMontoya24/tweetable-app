class Comment < ApplicationRecord
  # Validations
  validates :body, presence: true, length: { maximum: 140 }

  # Association
  belongs_to :user
  belongs_to :tweet, counter_cache: true
end
