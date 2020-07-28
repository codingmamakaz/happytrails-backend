class Review < ApplicationRecord
  belongs_to :user
  belongs_to :trail, optional: true

  validates_presence_of :comment

  def api_reviews
    Review.where(:api_trail_id => self.api_trail_id)
  end

end

