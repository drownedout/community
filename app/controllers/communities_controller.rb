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
	end

	def show
	end

	def search
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def find_community
		@community = Community.find(params[:id])
	end

	def community_params
		params.require(:community).permit(:name)
	end
end