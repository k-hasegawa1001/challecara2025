class CreatePushTokens < ActiveRecord::Migration[8.0]
  def change
    create_table :push_tokens, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true,type: :uuid
      t.text :token
      t.string :platform

      t.timestamps
    end
  end
end
