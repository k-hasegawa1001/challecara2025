class CreateUserSettings < ActiveRecord::Migration[8.0]
  def change
    # ↓↓↓【編集】主キーをuser_idに指定 ↓↓↓
    create_table :user_settings, primary_key: :user_id do |t|
      # user:referencesは不要になるので削除
      
      t.string :default_visibility
      t.integer :proximity_radius_m
      t.boolean :like_notification_enabled
      t.boolean :comment_notification_enabled

      t.timestamps
    end
    # ↓↓↓【手動で追加】外部キー制約を追加 ↓↓↓
    add_foreign_key :user_settings, :users, column: :user_id
  end
end