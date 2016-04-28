class CommunitiesController < ApplicationController
	before_action :find_community, only: [:show, :edit, :update, :destroy]
	
	def index
		@communities = Community.all
	end

	def new
		@community = Community.new
	end

	def create
		@community = Community.new(community_params)
		if @community.save
			redirect_to @community
		else
			render 'new'
		end
	end

	def show
	end

	def search
	end

	def edit
	end

	def update
		if @community.update(community_params)
			redirect_to @community
		else
			render 'edit'
		end
	end

	def destroy
	end

	private

	def find_community
		@community = Community.find(params[:id])
	end

	def community_params
		params.require(:community).permit(:name, :location, :banner_image)
	end
end