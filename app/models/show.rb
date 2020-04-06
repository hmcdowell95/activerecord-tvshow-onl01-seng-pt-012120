class Show < ActiveRecord::Base
  
  def self.highest_rating
    self.maximum("rating")
  end
  
  def self.most_popular_show
    a = self.highest_rating
    self.find_by(rating: a)
  end
  
end 