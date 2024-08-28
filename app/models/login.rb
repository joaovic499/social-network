class Login < ApplicationRecord
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 10 }
    validates :name, presence: true, length: { minimum: 10 }

    def change
        create_table :login do |l|
            t.string :email
            t.string :password
            t.string :name

            t.timestamps
        end
    end
end
