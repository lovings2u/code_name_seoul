class CreateSolveStages < ActiveRecord::Migration[5.0]
  def change
    create_table :solve_stages do |t|
      t.belongs_to :player, foreign_key: true
      t.belongs_to :stage, foreign_key: true

      t.timestamps
    end
  end
end
