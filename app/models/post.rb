class Post < ApplicationRecord
	validates :message, presence: true
	belongs_to :user
	has_many :postcomments
end
