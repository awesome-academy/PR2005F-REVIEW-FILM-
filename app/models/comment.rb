class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :cmt_duty, polymorphic:true
	has_many :sub_comments
end
