class CreateCategory < ActiveRecord::Migration
  def change
  	create_table :categories do |row|
  		row.string :category_title

  		row.timestamp
  	end
  end
end
