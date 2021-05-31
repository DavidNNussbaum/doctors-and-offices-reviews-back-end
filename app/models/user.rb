class User < ApplicationRecord
    has_many :reviews
    has_many :doctors, through: :reviews
    has_secure_password
end
