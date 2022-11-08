class User < ApplicationRecord

  validates :username, uniqueness: { case_sensitive: false }, presence: true, length: { in: 0..20 }
  VALID_EMAIL_REGEX = /\A[\w+\.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, uniqueness:{ case_sensitive: false}, presence: true, length: {minimum: 6, maximun: 105}, format: {with: VALID_EMAIL_REGEX}
end
