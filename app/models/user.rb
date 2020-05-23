class User < ApplicationRecord
  has_secure_token :auth_token
  has_secure_password

  validates :username, length: { in: 5..25 }
  validates :email, length: { in: 5..25 }
  validates :email_confirmed
  validates :password
  validates :password_confirmed
end
