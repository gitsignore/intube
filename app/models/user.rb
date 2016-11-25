class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true, length: { minimum: 3 }
end
