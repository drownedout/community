class NeighborhoodsController < ApplicationController
	before_action :find_neighborhood, only: [:show, :edit, :update, :destroy]
	before_action :set_community

	def index
	end

	def new
		@neighborhood = Neighborhood.new
	end

	def create
		@neighborhood = Neighborhood.new(neighborhood_params)
		if @neighborhood.save
			redirect_to @neighborhood
		else
			render 'new'
		end
	end

	def show
	end

	def edit
	end

	def update
		if @neighborhood.update
			redirect_to @neighborhood
		else
			render 'edit'
		end
	end

	def destroy
	end

	private

	def neighborhood_params
		params.require(:neighborhood).permit(:name, :description, :profile_picture, :banner_image)
	end

	def set_community
		@community = Community.find(params[:community_id])
	end

	def find_neighborhood
		@neighborhood = Neighborhood.find(params[:id])
	end

end
