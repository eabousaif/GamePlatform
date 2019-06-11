# frozen_string_literal: true

class GenresController < ApplicationController
  def index
    @video_games = if params[:genre][:id].blank?
                     VideoGame.all
                   else
                     Genre.find(params[:genre][:id]).video_games
                   end
    render "video_games/index"
  end
end
