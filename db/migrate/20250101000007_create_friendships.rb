class CreateFriendships < ActiveRecord::Migration[8.0]
  def change
    create_table :friendships, id: false do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid

      # ↓↓↓【手動で追加】friend_idカラム。参照先はusersテーブル ↓↓↓
      t.references :friend, null: false, foreign_key: { to_table: :users }, type: :uuid

      t.timestamps
    end
    add_index :friendships, [:user_id, :friend_id], unique: true
  end
end