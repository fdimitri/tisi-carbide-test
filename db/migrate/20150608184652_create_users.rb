class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :userName
      t.string :firstName
      t.string :lastName
      t.string :eMail
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
