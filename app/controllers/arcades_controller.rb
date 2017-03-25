class ArcadesController < ApplicationController
  before_action :authorize_user, except: [:index, :show]
  def index
    @arcades = Arcade.all
    @states = @arcades.map { |arcade| arcade.state }.sort.uniq
  end

  def new
    @arcade = Arcade.new
  end

  def show
    @arcade = Arcade.find(params[:id])
    @arcadegames = Arcadegame.where(arcade_id: @arcade.id)
    @game = Game.new
  end

  def create
    @arcade = Arcade.new(arcade_params)

    if @arcade.save
      flash[:notice] = "Item added successfully"
      redirect_to arcade_path(@arcade)
    else
      flash[:notice] = @arcade.errors.full_messages
      render :new
    end
  end

  private

  def arcade_params
    params.require(:arcade).permit(:name, :street1, :street2, :city, :state, :zip)
  end

  def authorize_user
    if !user_signed_in?
      flash[:notice] = "Please log in to use this feature"
      redirect_to new_user_session_path
    end
  end
end
