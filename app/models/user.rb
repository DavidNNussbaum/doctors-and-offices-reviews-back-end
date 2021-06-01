class User < ApplicationRecord
    has_many :reviews
    has_many :doctors, through: :reviews
    has_secure_password
    validates :email, presence: true, uniqueness: true
    validates :password_digest, presence: true
end
