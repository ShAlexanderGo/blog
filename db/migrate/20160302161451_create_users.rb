class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :middleName
      t.string :lastName
      t.string :login
      t.string :password_digest
      t.integer :role

      t.timestamps
    end
  end
end
