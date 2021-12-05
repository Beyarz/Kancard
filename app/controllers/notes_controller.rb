class NotesController < ApplicationController
  before_action :authenticate_user!

  def create
    @board = Board.find(params[:board_id])
    @note = @board.notes.create(permit_card_params)
    redirect_to board_path(@board)
  end

  def destroy
    @board = Board.find(params[:board_id])
    @card = @board.notes.find(params[:id])
    @card.destroy
    redirect_to board_path(@board)
  end

  private
  def permit_card_params
    params.require(:note).permit(:content)
  end
end
