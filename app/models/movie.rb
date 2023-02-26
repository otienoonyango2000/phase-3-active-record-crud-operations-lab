class Movie < ActiveRecord::Base
    def self.find_all_movies_by_year(year)
        Movie.where(year: year)
      end
    
      def self.create_with_title(name)
        create(title: name)
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
        find(id)
      end

      def self.find_movie_with_attributes(attributes)
        where(attributes).first
      end

      def self.find_movies_after_2002
        where("release_date > 2002")
      end

      def update_with_atttributes(attributes)
        update(attributes)
      end

      def self.update_all_titles(name)
        update_all(title: name)
      end

     def self.delete_by_id id
        destroy(id) 
     end

     def self.delete_all_movies
        destroy_all
     end


end