class AboutController < ApplicationController 
	def index
		flash[:alert] = "hey man"
	end
end
