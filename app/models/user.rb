class User < ActiveRecord::Base
  before_save { self.email = email.downcase }

  has_many :microposts

  has_secure_password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, presence: true,
                   length: {maximum: 50}
  validates :email, presence: true,
                    format: {with: VALID_EMAIL_REGEX},
                    uniqueness: {case_sensitive: false}

  # Password
  validates :password, length: {minimum: 6}
  validates_confirmation_of :password, if: lambda { |m| m.password.present? }

end
