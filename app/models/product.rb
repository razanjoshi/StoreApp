class Product < ApplicationRecord
	belongs_to :category, required: false
	attr_accessor :new_category_name
	before_save :create_category_from_name

	def create_category_from_name
		create_category(name: new_category_name) unless new_category_name.blank?
	end

	def nice_category(cat_id)
		Category.find(cat_id).name
	end
end
