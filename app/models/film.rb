class Film < ApplicationRecord
	has_many :watch_lists
	has_many :reviews
	has_many :film_genres
	has_many :ratings
	has_many :people_films
	has_many :comments, as: :cmt_duty
	has_one_attached :image
end
