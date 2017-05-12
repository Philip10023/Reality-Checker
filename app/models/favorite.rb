class Favorite < ApplicationRecord
  validates :reality, presence: true
  validates :user_id, presence: true
  validates :category_id, presence: true
  
  belongs_to :reality
  belongs_to :user
  belongs_to :category
end
