class Post < ApplicationRecord
	validates :message, presence: true
	belongs_to :user,  dependent: :destroy
	has_many :postcomments
end
