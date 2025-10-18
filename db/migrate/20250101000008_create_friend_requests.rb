class CreateFriendRequests < ActiveRecord::Migration[8.0]
  def change
    create_table :friend_requests, id: :uuid do |t|
      t.references :from_user, null: false, foreign_key: { to_table: :users }, type: :uuid
      t.references :to_user, null: false, foreign_key: { to_table: :users }, type: :uuid
      
      t.string :status

      t.timestamps
    end
  end
end
