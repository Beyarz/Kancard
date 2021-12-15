class NotesController < ApplicationController
  before_action :authenticate_user!

  def move
    @board = Board.find(params[:board_id])
    @note = @board.notes.find(params[:note_id])

    # @note.update(position: params[:position].to_i)
    # @note.save
    @note.insert_at(params[:position].to_i)
    head :ok
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
