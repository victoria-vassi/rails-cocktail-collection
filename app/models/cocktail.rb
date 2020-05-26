class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  belongs_to :user

  validates :name, uniqueness: true, presence: true
  mount_uploader :photo, PhotoUploader
end
