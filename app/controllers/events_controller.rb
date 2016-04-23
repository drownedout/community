class EventsController < ApplicationController
	def index
	end

	def new
	end

	def create
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

	def events_params
		params.require(:event).permit()
	end

	def find_event
		@event = Event.find(params[:id])
	end

end
