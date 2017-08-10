class Team < ApplicationRecord
    belongs_to :theme
    has_many :stages
end
