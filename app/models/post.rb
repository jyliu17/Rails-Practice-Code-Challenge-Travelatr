class Post < ApplicationRecord
    belongs_to :blogger
    belongs_to :destination
    
    validate :title, presence: true
    validate :content, length: { minimum: 100}
end
