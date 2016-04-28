class EventsController < ApplicationController

	before_action :set_community

	def index
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params)
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def event_params
		params.require(:event).permit(:title, :description, :date, :event_image)
	end

	def set_community
		@community = Community.find(params[:community_id])
	end

	def find_event
		@event = Event.find(params[:id])
	end

end
