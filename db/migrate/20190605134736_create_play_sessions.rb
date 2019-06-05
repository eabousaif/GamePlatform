# frozen_string_literal: true

class CreatePlaySessions < ActiveRecord::Migration[5.2]
  def change
    create_table :play_sessions do |t|
      t.integer :duration
      t.integer :player_id
      t.integer :video_game_id

      t.timestamps
    end
  end
end
