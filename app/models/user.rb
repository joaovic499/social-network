class User < ApplicationRecord
    has_many :posts
    
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true
    validates :name, presence: true, length: { minimum: 10 }
end
