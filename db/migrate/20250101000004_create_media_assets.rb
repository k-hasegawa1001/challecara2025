class CreateMediaAssets < ActiveRecord::Migration[8.0]
  def change
    create_table :media_assets, id: :uuid do |t|
      t.references :post, null: false, foreign_key: true,type: :uuid
      t.text :asset_url
      t.string :asset_type
      t.integer :sort_order

      t.timestamps
    end
  end
end
