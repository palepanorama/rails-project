class Position < ApplicationRecord
    has_many :players 
    has_many :users, through: :players 
end
