class Movie < ActiveRecord::Base
  def self.all_ratings
    return ['G','PG','PG-13','R']
  end
  
  def self.similar_movies movie_title
    director = Movie.find_by(title: movie_title).director
    if director.nil? or director.blank?
      return nil
    end
    puts Movie.where(director: director).pluck(:title).inspect
    
    Movie.where(director: director).pluck(:title)
  end
end
