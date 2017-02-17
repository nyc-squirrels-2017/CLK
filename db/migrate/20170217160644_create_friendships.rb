class CreateFriendships < ActiveRecord::Migration[5.0]
  def change
    create_table :friendships do |t|
      t.references :user_id, foreign_key: true
      t.integer :follower_id

      t.timestamps
    end
  end
end