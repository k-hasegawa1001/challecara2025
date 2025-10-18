class CreatePostLikes < ActiveRecord::Migration[8.0]
  def change
    create_table :post_likes, id: false do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.references :post, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end

    # ↓↓↓【手動で追加】user_idとpost_idの組み合わせの重複を防ぐ ↓↓↓
    # これが複合主キーの役割を果たします
    add_index :post_likes, [:user_id, :post_id], unique: true
  end
end
