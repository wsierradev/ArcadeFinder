class Api::V1::ArcadesController < ApplicationController
  def index
    render json: Arcade.all
  end
end
