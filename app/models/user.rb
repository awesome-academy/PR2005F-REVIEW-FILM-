class User < ApplicationRecord
	has_many :ratings
	has_many :comments
	has_many :sub_comments
	has_many :reviews
	has_many :watch_lists
end
