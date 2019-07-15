# frozen_string_literal: true

class PlaySessionsController < ApplicationController
  before_action :player

  def index
    @play_sessions = current_player.play_sessions
    respond_to do |format|
      format.html
      format.json do
        render json: @play_sessions, include: :video_game
        # belongs to relationship, Garett said it's cool
      end
    end
  end

  def show
    @play_session = PlaySession.find(params[:id])
  end

  def new
    @play_session = PlaySession.new
  end

  def create
    @play_session = PlaySession.new(play_session_params)
    @play_session.player = current_player

    if @play_session.save
      redirect_to players_list_video_games_path
    else
      render "new"
    end
  end

private

  def video_game
    VideoGame.find_by(params[:video_game_id])
  end

  def player
    Player.find_by(params[:player_id])
  end

  def play_session_params
    params.require(:play_session).permit(:video_game_id, :duration)
  end
end
