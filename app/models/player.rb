class Player < ApplicationRecord
    belongs_to :user 
    belongs_to :position 

    scope :selected, -> {where(has_team: true)}
end
