class CardsController < ApplicationController

  def index
    
  end

  def create
    if session[:current_session]
      current_session = Session.find_by(token: session[:current_session])
    else
      current_session = Session.create(token: SecureRandom.base64(100))
      session[:current_session] = current_session.token
    end
    card = Card.new(card_params)
    card.submitted_by = current_session.id 
    card.save

    redirect_to root_url, notice: "Created!"
  end

  def card_params
    params.require(:card).permit(
      :display_name, 
      :image_url,
      stats_attributes: [
        :title,
        :value
      ]
    )
  end

end
