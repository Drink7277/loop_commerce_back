class User < ApplicationRecord
  has_secure_password

  has_many :orders, dependent: :destroy

  before_validation :generate_auth_token

  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, length: { minimum: 6 }, if: :password_digest_changed?
  validates :auth_token, presence: true, uniqueness: true

  private

  def generate_auth_token
    self.auth_token ||= SecureRandom.hex(10)
  end
end
