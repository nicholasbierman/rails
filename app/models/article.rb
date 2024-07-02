class Article < ApplicationRecord
    # title must contain one non whitespace character
    validates :title, presence: true
    # same as above, but must also be 10 characters long
    validates :body, presence: true, length: { minimum: 10 }

    VALID_STATUSES = ['public', 'private', 'archived']

    validates :status, inclusion: { in: VALID_STATUSES }

    #association to comments table
    has_many :comments

    def archived?
      status == 'archived'
    end
end
