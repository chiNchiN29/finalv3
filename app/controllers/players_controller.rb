class PlayersController < ApplicationController
  def index
  end

  def create
  	@player = Player.new
  	@player.p1_bet = params[:player][:p1_bet]
  	@player.p2_bet = params[:player][:p2_bet]
  	@player.save!
  	redirect_to :action => :index
  end

  def new
  	@player = Player.new
  end

  def show
  end
end
