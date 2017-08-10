class CreateThemeRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :theme_records do |t|
      t.belongs_to :theme, foreign_key: true
      t.belongs_to :record, foreign_key: true

      t.timestamps
    end
  end
end
