class Player < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :play_sessions
  has_many :video_games, through: :play_sessions
  validates :first_name, :last_name, :gamer_tag, :email, :password, presence: true
  validates :gamer_tag, :email, uniqueness: true
  validates :password, length: { within: 8..20},
end
