class PeopleFilm < ApplicationRecord
	belongs_to :film 
	belongs_to :people
end
