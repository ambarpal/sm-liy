class CreateUser1s < ActiveRecord::Migration
  def change
    create_table :user1s do |t|
      t.string :name
      t.string :password_digest
      t.string :email

      t.timestamps
    end
  end
end
