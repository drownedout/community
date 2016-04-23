class NeighborhoodsController < ApplicationController
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

	def neighborhoods_params
		params.require(:neighborhood).permit()
	end

	def find_neighborhood
		@neighborhood = Neighborhood.find(params[:id])
	end

end
