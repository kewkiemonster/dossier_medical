class User < ApplicationRecord
  has_many :patient, dependent: :destroy

  # standardize on all lower-case addresses e.g. “Foo@ExAMPle.CoM” to “foo@example.com”
  before_save { self.email = email.downcase }
  # validate method = name + email must be present or it will not be valid.
  # the lenght that can be used in names is 20 // emails are 50
  validates :name,  presence: true, length: { maximum: 50 }
  # validates the email's invalidity using regrex
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 90 },
                        format: { with: VALID_EMAIL_REGEX },
                        # this means that the user cannot use the same email twice
                        uniqueness: { case_sensitive: false }

  has_secure_password
   validates :password, presence: true, length: { minimum: 6 }, allow_nil: true

   def self.search(search)
     where("name LIKE ? OR email LIKE ?", "%#{search}%", "%#{search}%","%#{search}%","%#{search}%")
   end

  # Returns the hash digest of the given string.
   def User.digest(string)
     cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                   BCrypt::Engine.cost
     BCrypt::Password.create(string, cost: cost)
   end
end
