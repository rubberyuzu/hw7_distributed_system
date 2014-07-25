require 'httparty'

class Party
	include HTTParty
end

class MadlibController < ApplicationController
	def show
		urls = ["http://step-test-krispop.appspot.com/",
						"http://ivory-haven-645.appspot.com/",
					  "http://1-dot-kaisuke5-roy7.appspot.com/",
						"http://1-dot-step-homework-kitade.appspot.com/",
					  "http://fathomless-headland-8205.herokuapp.com/"]
		r = rand(urls.length)
		verb = Party.get("#{urls[r]}getword?pos=verb")
		adj = Party.get("#{urls[r]}getword?pos=adjective")
		noun = Party.get("#{urls[r]}getword?pos=noun")
		name = Party.get("#{urls[r]}getword?pos=name")
		@message = "'I #{verb} a #{adj} #{noun}'
		- said #{name} "
	end
end