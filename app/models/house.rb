class House < ApplicationRecord
  validates :name, :description, :location, :price, presence: true

  has_many :favourites, dependent: :destroy
end
