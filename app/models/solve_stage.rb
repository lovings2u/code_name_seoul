class SolveStage < ApplicationRecord
  belongs_to :player, counter_cache: true
  belongs_to :stage
end
