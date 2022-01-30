class CardsController < ApplicationController
  before_action :authenticate_user!

  def create
    @board = Board.find params_board_id
    @card = @board.cards.create permitted_params

    redirect_to board_path @board
  end

  def destroy
    @board = Board.find params_board_id
    @card = @board.cards.find params_id
    @card.destroy

    redirect_to board_path @board
  end

  private
  def params_board_id
    params[:id]
  end

  def params_id
    params[:id]
  end

  def permitted_params
    params.require(:card).permit(:title)
  end
end
