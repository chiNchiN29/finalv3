class PlayersController < ApplicationController
  def index
	@player = Player.new
  end

  def round
  	@players = Player.new
  end

  def result
  end

  def summary
  end
end
