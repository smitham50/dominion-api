class Api::V1::CardsController < ApplicationController

  def index
    cards = Card.all

    render json: cards
  end

  def create
    card = Card.create(name: params[:name], picture: params[:picture], cost: params[:cost], card_type: params[:type], triggers: params[:triggers], victory_points: params[:victory_points], value: params[:value])

    render json: card
  end



end