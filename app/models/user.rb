class User < ApplicationRecord
    has_secure_password
    has_many :posts
    has_many :reviews, through: :posts

    validates :username, :presence => true, :uniqueness => true
end
