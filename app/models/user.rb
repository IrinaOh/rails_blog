class User < ApplicationRecord
	validates :email, presence: { message: ' must be present'}
	validates :email, uniqueness: { message: ' is aready registered'}
	has_many :posts
	has_many :postcomments
	has_many :friendships 
	has_many :friends, :through => :friendships
end
