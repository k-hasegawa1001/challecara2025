class CreateModerationReports < ActiveRecord::Migration[8.0]
  def change
    create_table :moderation_reports do |t|
      t.text :reason
      t.string :status

      t.timestamps
    end
  end
end
