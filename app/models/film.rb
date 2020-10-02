class Film < ApplicationRecord
	has_many :watch_lists
	has_many :reviews
	has_many :film_genres
	has_many :ratings
	has_many :people_films
end
