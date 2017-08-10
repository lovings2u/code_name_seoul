class CreateHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :histories do |t|
      t.boolean :answerbool, null: false
      t.string :answer, null: false
      t.integer :questionnumber, null: false
      t.timestamps
    end
  end
end
