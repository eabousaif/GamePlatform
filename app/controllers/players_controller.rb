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
    @play_sessions = @player.play_sessions.limit(3)
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to players_path(@player)
    else
      redirect_to new_player_session_path
    end
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    if @player.update(player_params)
      respond_to do |format|
        format.html { render :show }
        format.json { render json: @player.to_json }
      end
    else
      render "edit"
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
