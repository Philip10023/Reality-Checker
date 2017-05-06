class Category < ApplicationRecord
  include PgSearch

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true

  pg_search_scope :search_category_only, against: [:title, :description]
  scope :search, ->(query) { search_category_only(query) if query.present? }

  has_many :realitychecks
end
