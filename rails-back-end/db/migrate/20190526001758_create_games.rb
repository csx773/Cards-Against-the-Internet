class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :theme
      t.integer :lobby_id
      t.integer :maxRound
      t.integer :maxPlayers      
      t.json 'gameState'

      t.timestamps
    end
  end
end


