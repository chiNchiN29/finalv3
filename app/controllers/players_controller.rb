class PlayersController < ApplicationController
  def index
	@player = Player.new
  end

  def play
  	@player = Player.new
	@player.p1_name = params[:player][:p1_name]
	@player.p2_name = params[:player][:p2_name]
	@player.save!
  end
  
  def round
  	@player = Player.new
  	#@player.p1_name = 
  	#@player.p2_name = 

  	@player.p1_bet = params[:player][:p1_bet1]
  	@player.p2_bet = params[:player][:p1_bet1]
  	#@player.p2_money = 
  	#@player.p2_money = 
  	@player.save!
  	redirect_to :action => :result
  end

  def result
  	@player = Player.find(params[:id])
  end

  def summary
  end
end
