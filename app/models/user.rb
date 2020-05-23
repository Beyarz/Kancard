class User < ApplicationRecord
  has_secure_token :auth_token
  has_secure_password

  validates :username, length: { in: 5..25, too_short: "The minimum username length is %{count}" }, presence: true, uniqueness: true, on: :create, on: :update
  validates :email, length: { in: 5..25, too_short: "The minimum email length is %{count}" }, presence: true, uniqueness: true, on: :create, on: :update
  validates :email_confirmed, presence: true, on: :create, on: :update
  validates :password, presence: true, length: { minimum: 6, too_short: "The minimum passowrd length is %{count}" }, on: :create, on: :update
  validates :password_confirmed, presence: true, on: :create, on: :update
end
