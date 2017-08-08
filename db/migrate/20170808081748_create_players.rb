class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.belongs_to :theme, null: false
      t.belongs_to :team, null: false
      t.string :name, null: false
      t.integer :hintcount, null: false
      t.datetime :starttime, null: false
      t.timestamps
    end
  end
end
