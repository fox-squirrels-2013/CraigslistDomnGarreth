class CreatePosts < ActiveRecord::Migration
  def change
  	create_table :posts do |row|
  		row.string :post_title
  		row.string :post_body

  		row.timestamp
  	end
  end
end
