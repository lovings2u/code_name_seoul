class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name, null: false
      t.string :imageurl, null: false
      t.belongs_to :theme, foreign_key: true
      t.timestamps
    end
  end
end
