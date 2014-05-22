class AddCard3ToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :card3, :integer
  end
end
