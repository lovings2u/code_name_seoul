class CreateHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :histories do |t|
      t.boolean :answerbool
      t.string :answer
      t.timestamps
    end
  end
end
