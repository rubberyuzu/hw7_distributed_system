require 'httparty'

class Test
	include HTTParty
end

class ShowController < ApplicationController
	def show
		message = params[:message]
		@message = Test.get("http://step-test-krispop.appspot.com/convert?message=#{message}")	
	end
end