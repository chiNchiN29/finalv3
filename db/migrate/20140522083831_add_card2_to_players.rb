class AddCard2ToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :card2, :integer
  end
end
