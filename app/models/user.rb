class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true,
                       length: { minimum: 4, maximum: 20 }
  validates :email, presence: true, length: { maximum: 50 },
                    uniqueness: true
  has_many :favourites
  has_many :home, through: :favourites, source: 'house'
end
