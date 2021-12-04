class CardsController < ApplicationController
  def create
    @board = Board.find(params[:board_id])
    @card = @board.cards.create(permit_card_params)
    redirect_to board_path(@board)
  end

  def destroy
    @board = Board.find(params[:board_id])
    @card = @board.cards.find(params[:id])
    @card.destroy
    redirect_to board_path(@board)
  end

  private
  def permit_card_params
    params.require(:card).permit(:title, :content)
  end
end
