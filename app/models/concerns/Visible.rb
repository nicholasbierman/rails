module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = ['public', 'private', 'archived']

  included do
    validates :status, incusion: { in: VALID_STATUSES }
  end
  
  def archived?
    status == 'archived'
  end
end
