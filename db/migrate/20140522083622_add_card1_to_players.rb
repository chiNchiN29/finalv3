class AddCard1ToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :card1, :integer
  end
end
