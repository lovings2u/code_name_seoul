class Player < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  belongs_to :theme, optional: true
  belongs_to :team, optional: true

  has_many :solve_stages, foreign_key: "player_id", class_name: "Stage"

  has_many :player_histories
  has_many :histories, through: :player_histories

  has_one :record

  def email_required?
    false
  end

  def email_changed?
    false
  end
end