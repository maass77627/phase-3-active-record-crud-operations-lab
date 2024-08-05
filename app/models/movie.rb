class Movie < ActiveRecord::Base


    def self.create_with_title(title)
        movie = Movie.new
        movie.title = title
        movie.save
        movie
    end

    def self.first_movie
        Movie.all.first

    end

    def self.last_movie
        Movie.all.last
    end

    def self.movie_count
        Movie.all.count
    end

    def self.find_movie_with_id(id)
        Movie.find(id)

    end

    def self.find_movie_with_attributes(attributes)
        Movie.find_by(attributes)
    end

    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end

    def update_with_attributes(attributes)
        self.update(attributes)
    end

    def self.update_all_titles(title)
        Movie.update(title: title)
    end

    def self.delete_by_id(id)
        Movie.destroy(id)
    end

    def self.delete_all_movies
        Movie.destroy_all
    end

end