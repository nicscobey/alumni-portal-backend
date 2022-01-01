class User < ApplicationRecord
    has_secure_password
    has_many :forum
    has_many :replies
end
