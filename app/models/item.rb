class Item < ActiveRecord::Base
	belongs_to :order
	belongs_to :category
	has_many :item_tags
end
