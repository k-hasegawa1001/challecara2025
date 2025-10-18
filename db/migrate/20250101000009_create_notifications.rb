class CreateNotifications < ActiveRecord::Migration[8.0]
  def change
    create_table :notifications, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true,type: :uuid
      t.string :notification_type
      t.jsonb :payload
      t.boolean :is_read

      t.timestamps
    end
  end
end
