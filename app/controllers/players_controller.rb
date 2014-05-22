class PlayersController < ApplicationController
  def index
	@players = Player.all
  end

  def create
  	@player = Player.new
  	@player.p1_bet = params[:player][:p1_bet1]
  	@player.p2_bet = params[:player][:p2_bet1]
  	@player.p1card = params[:player][:p1card]
  	@player.p2card = params[:player][:p2card]
  	@player.save!
  	redirect_to :action => :index
  end

  def new
  	@player = Player.new
  end

  def show
		@player = Player.find(params[:id])
  end
end
