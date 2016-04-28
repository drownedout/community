class Event < ActiveRecord::Base
	belongs_to :community
	belongs_to :neighborhood
end
