class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :gamer_tag
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
