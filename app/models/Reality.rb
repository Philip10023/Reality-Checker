class Reality < ApplicationRecord
  validates :category, presence: true
  validates :user, presence: true

  belongs_to :category
  belongs_to :user
end
