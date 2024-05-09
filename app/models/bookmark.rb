class Bookmark < ApplicationRecord
  #associations
  belongs_to :movie
  belongs_to :list

  #validations
  validates :comment, length: { minimum: 6 }
  validates :movie_id, presence: true
  validates :list_id, presence: true, uniqueness: { scope: :movie_id }
end
