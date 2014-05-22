class PlayersController < ApplicationController
  def index
	@player = Player.new
  end
  def play
  	@player = Player.new
  end
  def round
  	@player = Player.new
  	@player.p1_name = 
  	@player.p2_name = 
  	@player.p1_bet = 
  	@player.p2_bet = 
  	@player.p2_money = 
  	@player.p2_money = 
  	@player.save!
  end

  def result
  end

  def summary
  end
end
