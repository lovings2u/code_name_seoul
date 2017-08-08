class Stage < ApplicationRecord
    has_many :solve_stages
    belongs_to :team
    
    has_many :stage_hint_images
    has_many :images, through: :stage_hint_images
end
