class GamesController < ApplicationController
  def index
    @game = Game.new
    @games = Game.all
    @sortedgames = @games.sort_by {|game| game.name.downcase}
    @gameslist = @games.map { |game| game.name }.sort.uniq
  end

  def new
    @game = Game.new
  end

  def create
    @arcade = Arcade.find(params[:arcade_id])
    @game = @arcade.games.build(game_params)

    if @game.save
      # if Game.where(:name => @arcade.games.name).blank?
      # binding.pry
      @arcade.games << @game
      flash[:notice] = "Game added successfully"
      redirect_to arcade_path(@arcade.id)
    else
      flash[:notice] = @game.errors.full_messages
      render :new
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  private

  def game_params
    params.require(:game).permit(:name, :quantity, :working?)
  end

  def authorize_user
    if !user_signed_in?
      flash[:notice] = "Please log in to use this feature"
      redirect_to new_user_session_path
    end
  end
end
