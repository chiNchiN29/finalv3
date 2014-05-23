class PlayersController < ApplicationController
  def index
	@players = Player.all	
	session[:deck] = []
	suit  = ['Clubs', 'Spades', 'Hearts', 'Diamonds']
	values = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13']
	session[:deck] = suit.product(values).shuffle!
	@cards = []
	@cards = session[:deck].sample(3)
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
