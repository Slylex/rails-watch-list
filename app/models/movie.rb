class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmark

  validates :title, presence: true
  validates :overview, presence: true
  validates :title, uniqueness: true
  validates :overview, uniqueness: true
end
