# frozen_string_literal: true

class PlayersController < ApplicationController
  before_action :authenticate_player!, only: :index

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def show
    @player = Player.find(params[:id])
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      session[:player_id] = @player.id
      redirect_to players_path(@player)
    else
      redirect_to new_player_session_path
    end
  end

private

  def player_params
    params.require(:player).permit(
      :first_name,
      :last_name,
      :gamer_tag,
      :bio,
      :email,
      :encrypted_password
    )
  end
end
