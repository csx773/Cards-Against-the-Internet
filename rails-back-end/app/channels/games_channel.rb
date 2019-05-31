class GamesChannel < ApplicationCable::Channel
  # def subscribed
  #   # game room channel
  #   stream_from "games_channel"
  # end

  def subscribed
    # lobby = Lobby.find(params[:lobby])
    # stream_for lobby

    game = Game.find(params[:game])
    stream_for game
  end
  
  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

end
