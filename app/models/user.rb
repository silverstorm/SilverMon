class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :registerable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :validatable,
         :confirmable, :lockable, :trackable,
         :pwned_password

  before_create :set_token_on_create

  validates :username, uniqueness: true
  validates :token,    uniqueness: true
  validates :email,    presence: true


  protected
    def email_required?
      false
    end

    def email_changed?
      false
    end

    def set_token_on_create
      self.token = SecureRandom.hex(32)
    end
end
