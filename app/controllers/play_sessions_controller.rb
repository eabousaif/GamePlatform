# frozen_string_literal: true

class PlaySessionsController < ApplicationController
  before_action :player

  def index
    @play_sessions = current_player.play_sessions
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
      redirect_to player_play_sessions_path(current_player, @play_session)
    else
      render "new"
    end
  end

  def edit
    @play_session = PlaySession.find(params[:id])
  end

  def update
    @play_session = PlaySession.find(params[:id])
    if @play_session.update(play_session_params)
      redirect_to video_game_path
    else
      render "edit"
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
