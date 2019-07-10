# frozen_string_literal: true

class VideoGamesController < ApplicationController
  def index
     @video_games = if params[:genre].blank? || params[:genre][:id].blank?
                     VideoGame.all
                   else
                     Genre.find(params[:genre][:id]).video_games
                   end
  end

  def players_list
    @video_games = current_player.video_games.uniq
  end

  def new
    @video_game = VideoGame.new
  end

  def show
    @video_game = VideoGame.find(params[:id])
    render :show, layout: false if request.xhr?.present?
  end

  def create
    @video_game = VideoGame.new(video_game_params)
    if @video_game.save
      redirect_to video_games_path(@video_game)
    else
      render "new"
    end
  end

  def edit
    @video_game = VideoGame.find(params[:id])
  end

  def update
    @video_game = VideoGame.find(params[:id])
    if @video_game.update(video_game_params)
      redirect_to video_game_path
    else
      render "edit"
    end
  end

  def destroy
    @video_game = VideoGame.find(params[:id])
    @video_game.destroy

    redirect_to video_games_path
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
