class Login < ApplicationRecord
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 10 }
    validates :name, presence: true, length: { minimum: 10 }
end
