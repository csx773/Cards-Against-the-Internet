class Game < ApplicationRecord
    has_many :rounds
    has_one :deck 

    # has_many :user_game_infos
    # has_many :users, through: :user_game_infos
end
