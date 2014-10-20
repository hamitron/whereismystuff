class ItemsController < ApplicationController
	respond_to :json

	def index
		@items = Item.all
		respond_with @items
	end


	def create 
		respond_with Item.create(items_params)
	end

	def destroy
		respond_with Item.destroy(params[:id])
	end

private

	def items_params
		params.require(:item).permit(:name, :location)
	end

end
