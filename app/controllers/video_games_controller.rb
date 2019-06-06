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
    @video_game = VideoGame.create(video_game_params)
    if @video_game.save
      redirect_to player_video_games_path
    else
      redirect_to new_player_video_game_path
    end
  end

  def edit
    @video_game = VideoGame.find(params[:id])
  end

  def update
    @video_game = VideoGame.create(video_game_params)
    if @video_game.update(video_game_params)
      redirect_to player_video_game_path
    else
      redirect_to edit_player_video_game_path
    end
  end

  def destroy
    @video_game = VideoGame.find(params[:id])
    @video_game.destroy
  end

private

  def video_game_params
    params.require(:video_game).permit(
      :name,
      :description,
      :rating,
      :release_year,
      :genre_id
    )
  end
end
