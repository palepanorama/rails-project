class Position < ApplicationRecord
    has_many :players 
    has_many :users, through: :players 
    validates :name, presence: true 

    accepts_nested_attributes_for :players 
end
