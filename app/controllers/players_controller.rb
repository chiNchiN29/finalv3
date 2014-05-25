class PlayersController < ApplicationController
  def index
	@players = Player.all
	session[:deck] = []
	suit  = ['Clubs', 'Spades', 'Hearts', 'Diamonds']
	values = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13']
	session[:deck] = suit.product(values).shuffle!
	@cards = []
	@cards = session[:deck].sample(3)

	# Ginawa ko tong 1, 2, 3 para pwede na i-compare agad sa card ng player na 1,2,3 din
	# So parang (player.p1card == @great ? "Player 1" : "Not Player 1") yung code sa ERB pero ayaw niya pa rin gumana HAHA
	
	if @cards[0].second.to_i > @cards[1].second.to_i
			if @cards[0].second.to_i > @cards[2].second.to_i
				@great = 1
			else
				@great = 3
			end
		elsif @cards[1].second.to_i > @cards[0].second.to_i
			if @cards[1].second.to_i > @cards[2].second.to_i
				@great = 2
			else
				@great = 3
			end
		end	
  	end

  if @great == @player

  def create
  	@player = Player.new
  	@player.p1_bet = params[:player][:p1_bet]
  	@player.p2_bet = params[:player][:p2_bet]
  	@player.p1card = params[:player][:p1card]
  	@player.p2card = params[:player][:p2card]
  	@player.winner = @great
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
end
