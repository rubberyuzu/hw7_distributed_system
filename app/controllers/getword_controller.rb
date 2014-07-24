class GetwordController < ApplicationController
	def show
		pos = params[:pos]
		@rand = rand(3)
		case pos
			when "verb"
				@arr = ["throw","eat","play"]
			when "noun"
				@arr =["guitar","sushi","iPhone"]
			when "adjective"
				@arr =["beautiful","shiny","stiff"]
			when "animal"
				@arr =["lion","capybara","human"]
			when "name"
				@arr =["Yuzu","Ono Yoko","John Lennon"]
			when "adverb"
				@arr =["silently","excitedly","slowly"]
			else
				@arr = ["yay", "foo", "bar"]
		end
	end
end