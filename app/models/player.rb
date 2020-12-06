class Player < ApplicationRecord
    belongs_to :user 
    belongs_to :position 
    validates :name, presence: true  

    scope :selected, -> {where(has_team: true)}
end
