class Player < ApplicationRecord
    belongs_to :user 
    belongs_to :position 
    scope :selected, -> {where(has_team: true)}
    scope :search, -> (input) {where("name LIKE (?)", "%#{input}%")}
    validates :name, presence: true  


end
