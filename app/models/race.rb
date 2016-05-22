class Race < ApplicationRecord
    has_many :characters
    validates :name, presence: true
    validates :description, presence: true
end
