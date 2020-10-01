class Person < ApplicationRecord
	has_many :people_films
	scope :actors, -> {where(type: “Actor”)}
	scope :directors, -> {where(type: “Director”)}
end
