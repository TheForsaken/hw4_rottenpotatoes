class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end

  def self.find_mwsd(id)
    if Movie.find(id).director.nil? or Movie.find(id).director.empty?
      return nil
    else
      director = Movie.find(id).director
      Movie.find_all_by_director(director)
    end
  end  

end
