class CreateLogins < ActiveRecord::Migration[7.1]
  def change
    create_table :logins do |t|
      t.string :email
      t.string :name
      t.string :password

      t.timestamps
    end
  end
end
