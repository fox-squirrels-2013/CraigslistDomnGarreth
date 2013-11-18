class Category < ActiveRecord::Base
	validates :category_title, presence: true
	has_many :posts
end