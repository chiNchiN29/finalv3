class AddP1cardToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :p1card, :string
  end
end
