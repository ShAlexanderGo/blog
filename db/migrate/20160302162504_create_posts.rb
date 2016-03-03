class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :user
      t.string :references
      t.string :body
      t.string :text
      t.string :title

      t.timestamps
    end
  end
end
