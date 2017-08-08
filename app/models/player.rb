class Player < ApplicationRecord
    belongs_to :theme
    belongs_to :team
    
    has_many :solve_stages
    has_many :stages, through: :solve_stages

    has_many :player_histories
    has_many :histories, through: :player_histories
end
