# frozen_string_literal: true

class PlayersController < ApplicationController
  before_action :authenticate_player!, only: :index

  def index
    @players = Player.all
  end
end
