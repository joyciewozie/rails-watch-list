class Bookmark < ApplicationRecord
  belongs_to :list, dependent: :destroy
  belongs_to :movie

  validates :comment, length: { minimum: 6 }
  validates :movie, presence: true
  validates :movie, uniqueness: { scope: :list }
end
