class Character < ApplicationRecord
    belongs_to :race
    validates :name, presence: true
    validates :age, presence: true
    validates :sex, presence: true
    validates :eyecolor, presence: true
    validates :haircolor, presence: true
    validates :birthsign, presence: true
    validates :placeofbirth, presence: true
    validates :weight, presence: true
    validates :height, presence: true
    validates :race_id, presence: true
end
