class Api::CardsController < ApplicationController
  def index
    # list all cards in DB
    @cards = Card.all.order(created_at: :desc)

    ActionCable.server.boradcast 'gamerooms_channel', {
      message: {
        cards: @cards 
      }
    }  

    # render :json => {
    #   message: {
    #     cards: @cards 
    #   }
    # }
  end

  def show
    # show only 1 card
    @singleCard = Card.all.first

    render :json => {
      message: {
        cards: @singleCard
      }
    }
  end

  def show_hand
  # shows all 5 white cards
  end
end
