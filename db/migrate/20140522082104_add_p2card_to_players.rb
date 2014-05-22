class AddP2cardToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :p2card, :string
  end
end
