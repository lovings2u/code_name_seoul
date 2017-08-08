class CreatePlayerHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :player_histories do |t|
      t.belongs_to :player, foreign_key: true
      t.belongs_to :history, foreign_key: true

      t.timestamps
    end
  end
end
