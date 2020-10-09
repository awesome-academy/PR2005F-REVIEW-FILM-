class Film < ApplicationRecord
	has_many :watch_lists
	has_many :reviews
	has_many :film_genres
	has_many :ratings
	has_many :people_films
	add_attachment :posts, :video
	attached_file :video, styles: {
    medium: {geometry: "640x480", format: "flv"},
    thumb: {geometry: "100x100", format: "jpg", time: 10}
  }, processors: [:transcoder]
end
