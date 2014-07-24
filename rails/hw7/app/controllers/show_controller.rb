require 'httparty'

class Party
	include HTTParty
end

class ShowController < ApplicationController
	def show
		message = params[:message]
		@message = Party.get("http://step-test-krispop.appspot.com/convert?message=#{message}")	
	end
end