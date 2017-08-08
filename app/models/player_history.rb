class PlayerHistory < ApplicationRecord
  belongs_to :player
  belongs_to :history
end
