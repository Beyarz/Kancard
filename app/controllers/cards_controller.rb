# frozen_string_literal: true

class CardsController < ApplicationController
  before_action :authenticate_user!

  # @route POST /boards/:board_id/cards (board_cards)
  def create
    @board = Board.find params_board_id
    @card = @board.cards.create permitted_params

    redirect_to board_path @board
  end

  # @route DELETE /boards/:board_id/cards/:id (board_card)
  def destroy
    @board = Board.find params_board_id
    @card = @board.cards.find params_id
    @card.destroy

    redirect_to board_path @board
  end

  private
    def params_board_id
      params[:board_id]
    end

    def params_id
      params[:id]
    end

    def permitted_params
      params.require(:card).permit(:title)
    end
end
