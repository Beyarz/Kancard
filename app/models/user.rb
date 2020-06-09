class User < ApplicationRecord
  acts_as_authentic do |config|
    config.log_in_after_create = false
    config.log_in_after_password_change = false
  end

  has_secure_password
  has_secure_token :auth_token

  validates :username,
    format: {
      with: /[a-zA-Z0-9]+/,
      message: "Should only consist of letters & numbers"
    },
    length: {
      in: 5..25,
      too_short: "The minimum length is %{count}"
    },
    uniqueness: {
      case_sensitive: false
    },
    on: :create

  validates :email,
    format: {
      with: /@/,
      message: "Should resemble an email address"
    },
    length: {
      in: 5..25,
      too_short: "The minimum email length is %{count}"
    },
    presence: true,
    uniqueness: {
      case_sensitive: false
    },
    on: :create

  validates :email_confirmed,
    presence: true,
    on: { :create, :update }

  validates :password,
    presence: true,
    confirmation: { if: :require_password? },
    length: {
      minimum: 6,
      too_short: "The minimum passowrd length is %{count}",
      if: :require_password?
    },
    on: :create

  validates :password_confirmed,
    presence: true,
    length: {
      if: :require_password?
    }
    on: :create
end
