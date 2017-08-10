class CreateRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :records do |t|
      t.belongs_to :player, foreign_key: true
      t.belongs_to :theme, foreign_key: true
      t.time :playtime, null: false

      t.timestamps
    end
  end
end
