# frozen_string_literal: true

class AddBioToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :bio, :text
  end
end
