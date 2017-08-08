class CreateStages < ActiveRecord::Migration[5.0]
  def change
    create_table :stages do |t|
      t.integer :number, null: false
      t.string :name, null: false
      t.string :questionlayout, null: false
      t.string :answerlayout, null: false
      t.string :answer, null: false
      t.belongs_to :team, foreign_key: true
      t.timestamps
    end
  end
end
