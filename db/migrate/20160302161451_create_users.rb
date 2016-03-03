class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :middleName
      t.string :lastName
      t.string :login
      t.string :password

      t.timestamps
    end
  end
end
