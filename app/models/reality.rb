class Reality < ApplicationRecord

  validates :user_id, presence: true
  validates :check, presence: true

  belongs_to :user
  belongs_to :category
end
