class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true,type: :uuid
      t.string :text
      t.string :visibility
      t.string :location_name
      t.text :address
      t.st_point :geolocation, geographic: true

      t.timestamps
    end
  end
end
