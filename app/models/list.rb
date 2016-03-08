class List < ActiveRecord::Base
	belongs_to :store
	has_many :items, :through => :item_lists
end