class Theme < ApplicationRecord
    has_many :teams

    has_many :theme_records
    has_many :records, through: :theme_records
end
