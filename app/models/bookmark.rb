class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :list, uniqueness: { scope: :movie }
  validates :comment, length: { minimum: 6 }
  validates :movie, presence: true
  validates :list, presence: true
end
