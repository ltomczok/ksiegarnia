#coding: UTF-8
class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title
	has_many :line_items
	has_many :orders, through: :line_items	
	validates :image_url,
		  :description,
		  :title, :presence => true
	validates :title, :uniqueness => true
	validates :price, numericality: { greater_than_or_equal_to: 0.01}
	#validates :image_url, 
	#		format:
	#		{
	#			with: %r{\.(gif)\Z}i,
	#			message: 'żółć'
	#		}
	end
