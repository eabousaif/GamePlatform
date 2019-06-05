# frozen_string_literal: true

class CreateVideoGames < ActiveRecord::Migration[5.2]
  def change
    create_table :video_games do |t|
      t.string :name
      t.string :description
      t.integer :rating
      t.integer :release_year
      t.integer :genre_id

      t.timestamps
    end
  end
end
