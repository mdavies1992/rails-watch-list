class Movie < ApplicationRecord
  #associations
  has_many :bookmarks
  has_many :lists

  #validations
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
