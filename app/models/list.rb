class List < ApplicationRecord
  #associations
  has_many :bookmarks, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_one_attached :photo

  #validations
  validates :name, presence: true, uniqueness: true
  validates :description, presence:true, length: {minimum: 10, maximum: 255}
end
