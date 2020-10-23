class Review < ApplicationRecord
	belongs_to :film
	belongs_to :user
	has_many :comments, as: :cmt_duty
	validates :user_id, presence: true
    validates :content, presence: true
    validates :title, presence: true
end
