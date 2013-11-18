class Post < ActiveRecord::Base
	validates :post_title, presence: true
	validates :post_body, presence: true
	validates :category_id, presence: true
	belongs_to :category
end