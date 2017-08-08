class CreateStageHintImages < ActiveRecord::Migration[5.0]
  def change
    create_table :stage_hint_images do |t|
      t.belongs_to :stage, foreign_key: true
      t.belongs_to :image, foreign_key: true

      t.timestamps
    end
  end
end
