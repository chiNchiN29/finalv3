class PagesController < ApplicationController
	def index
		Player.delete_all
	end
	
	def help
	end
end
