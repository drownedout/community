class PagesController < ApplicationController
	def index
		@communities = Community.all.limit(3).order("RANDOM()")
	end

	def account
	end
end