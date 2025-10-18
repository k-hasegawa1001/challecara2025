class CreatePostComments < ActiveRecord::Migration[8.0]
  def change
    create_table :post_comments, id: :uuid do |t|
      t.references :post, null: false, foreign_key: true,type: :uuid
      t.references :user, null: false, foreign_key: true,type: :uuid
      t.text :text

      t.timestamps
    end
  end
end
