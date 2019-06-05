# frozen_string_literal: true

class VideoGamesController < ApplicationController
  def index
    @video_games = VideoGame.all
  end

  def new
    @video_game = VideoGame.new
  end

  def show
    @video_game = VideoGame.find(params[:id])
  end

  def create
  end

private

  def video_game_params
    params.require(:player).permit(
      :name,
      :description,
      :rating,
      :release_year,
      :genre_id
    )
  end
end
