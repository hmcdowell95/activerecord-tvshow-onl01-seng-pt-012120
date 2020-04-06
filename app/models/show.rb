class Show < ActiveRecord::Base
  
  def self.highest_rating
    self.maximum("rating")
  end
  
  def self.most_popular_show
    a = self.highest_rating
    self.find_by(rating: a)
  end
  
  def self.lowest_rating
    self.minimum("rating")
  end
  
  def self.least_popular_show
    a = self.lowest_rating
    self.find_by(rating: a)
  end
  
  def self.ratings_sum
    self.sum("rating")
  end
  
  def self.popular_shows
    self.connection.select_all("SELECT * FROM shows WHERE rating > 5").to_a
  end
  
  def self.shows_by_alphabetical_order
    self.order
  end
end 