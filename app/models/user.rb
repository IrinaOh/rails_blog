class User < ApplicationRecord
	has_many :posts
	has_many :postcomments
	has_many :friendships
end
