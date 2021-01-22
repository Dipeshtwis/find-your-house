class User < ApplicationRecord
  has_secure_password
  
  validates :username, presence: true, uniqueness: { case_sensitive: false },
                   length: { minimum: 4, maximum: 20 }
  validates :email, presence: true, length: { maximum: 50 },
                    uniqueness: { case_sensitive: false }
end
