class Article < ApplicationRecord
    # title must contain one non whitespace character
    validates :title, presence: true
    # same as above, but must also be 10 characters long
    validates :body, presence: true, length: { minimum: 10 }
    validates :status, presence: true

    #association to comments table
    has_many :comments
end
