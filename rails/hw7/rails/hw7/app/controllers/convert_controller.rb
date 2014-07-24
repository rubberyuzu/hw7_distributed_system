class ConvertController < ApplicationController
	def show
		@message = params[:message]
	end
end