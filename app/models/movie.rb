class Movie < ActiveRecord::Base
def self.create_with_title(title)
    movie=Movie.new(title: title)
    movie.save
    movie
end

def self.first_movie
    Movie.first
end

def self.last_movie
    Movie.last
end

def self.movie_count
    Movie.count
end

def self.find_movie_with_id(id)
    Movie.find(id)
end

def self.find_movie_with_attributes(attr)
    Movie.find_by(attr)
end

def self.find_movies_after_2002
    recent_movies=Movie.where('release_date>?',2002)
    recent_movies.each do |movie|
        movie.title
    end
end

def update_with_attributes(id,new_title)
    
    movie=Movie.find(id)
    movie.title=new_title
    movie.save
    
end

def self.update_all_titles(new_title)
    Movie.update_all(title:new_title)
end

def self.delete_by_id(id)
    Movie.destroy(id)
end

def self.delete_all_movies
    Movie.destroy_all
end
end
