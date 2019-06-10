# frozen_string_literal: true

class GenresController < ApplicationController
  def index
    if params[:genre][:id].blank?
      @video_games = VideoGame.all
    else
      @video_games = Genre.find(params[:genre][:id]).video_games
    end
    render "video_games/index"
  end
end
