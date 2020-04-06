class Show < AcitveRecord::Base
  
  def highest_rating
    Show.maximum("rating")
end 