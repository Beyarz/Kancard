class NotesController < ApplicationController
  before_action :authenticate_user!

  def set_parent_id
    @board = Board.find(params[:board_id])
    # @note = @board.notes.update_attributes
    # @note = @board.notes.parent_column_id
  end

  def create
    @board = Board.find(params[:board_id])
    @note = @board.notes.create(note_params)
    redirect_to board_path(@board)
  end

  def destroy
    @board = Board.find(params[:board_id])
    @note = @board.notes.find(params[:id])
    @note.destroy
    redirect_to board_path(@board)
  end

  private
  def note_params
    params.require(:note).permit(:content)
  end
end
