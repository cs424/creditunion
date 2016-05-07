class User < ActiveRecord::Base
  has_secure_password

  validates :name, {
              presence: true,
              length: { maximum: 40 },
              uniqueness: { case_sensitive: false }
            }
  validates :password, presence: true, length: { minimum: 6 }
end
