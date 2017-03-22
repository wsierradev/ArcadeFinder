class GamesController < ApplicationController
  def index
    @game = Game.new
    @games = Game.all
    @gameslist = @games.map { |game| game.name }.sort.uniq

  end

  def new
    @game = Game.new
  end

  def create
    # @arcade = Arcade.find(params[:id])
    @game = Game.new(game_params)
    @game = @arcade.games.build(game_params)


    if @game.save
      # binding.pry
      flash[:notice] = "Game added successfully"
      redirect_to arcade_path(@arcade.id)
    else
      flash[:notice] = @game.errors.full_messages
      render :new
    end
  end


  def show
    @game = Game.find(params[:id])
    # @arcade = Arcadegame.find(params[:game_id])
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
