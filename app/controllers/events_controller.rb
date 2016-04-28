class EventsController < ApplicationController
	before_action :find_event, only: [:show, :edit, :update, :destroy]
	before_action :set_community

	def index
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params)
		@event.community_id = @community.id
		if @event.save
			redirect_to @community
		else
			render 'new'
		end
	end

	def show
	end

	def edit
	end

	def update
		if @event.update(event_params)
			redirect_to @community
		else
			render 'edit'
		end
	end

	def destroy
	end

	private

	def event_params
		params.require(:event).permit(:title, :description, :date, :event_image, :neighborhood_id)
	end

	def set_community
		@community = Community.find(params[:community_id])
	end

	def find_event
		@event = Event.find(params[:id])
	end

end
