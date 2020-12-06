class Player < ApplicationRecord
    belongs_to :user 
    belongs_to :position 
    validates :name, presence: true 
    # accepts_nested_attributes_for :positions 

    scope :selected, -> {where(has_team: true)}
end
