# frozen_string_literal: true

class PlaySessionsController < ApplicationController
  def index; end

  def new
    @play_session = PlaySession.new
  end

  def create
    @play_session = PlaySession.new(play_session_params)
    if @play_session.save
      redirect_to player_video_games_path(player)
    else
      render "new"
    end
  end

private

  def play_session_params
    params.require(:play_session).permit(:video_game_id, :player_id, :duration)
  end
end
