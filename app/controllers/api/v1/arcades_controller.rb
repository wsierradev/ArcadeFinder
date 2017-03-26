class Api::V1::CardsController < ApplicationController
  def index
    render json: Arcade.all
  end
end
