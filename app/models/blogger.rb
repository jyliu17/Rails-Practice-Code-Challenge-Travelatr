class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    validate :name, presence: true, uniqueness: true
    validate :age,  numericality: { greater_than:[0]}
    #check age later
    validate :bio, length: { minimum: 30}
#  validates :games_played, numericality: { only_integer: true }
end
