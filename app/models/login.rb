class Login < ApplicationRecord
    def change
        create_table :login do |l|
            t.string :email
            t.string :password
            t.string :name

            t.timestamps
        end
    end
end
