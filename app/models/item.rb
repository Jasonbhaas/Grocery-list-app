class List < ActiveRecord::Base
	has_many :lists, :through => :itemlists
end