class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end

  def self.find_mwsd(id)
    debugger
		director = Movie.find_by_id(id).director
		Movie.find_all_by_director(director)
  end  

end
