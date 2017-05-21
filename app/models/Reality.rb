class Reality < ApplicationRecord
  validates :user, presence: true
  validates :category, presence: true

  belongs_to :user
  belongs_to :category
  has_many :favorites
end
