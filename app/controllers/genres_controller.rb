# frozen_string_literal: true

class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end
end
