class NotesController < ApplicationController
  before_action :authenticate_user!

  def move
    @board = Board.find params_board_id
    @note = @board.notes.find params[:note_id]

    # Updates position
    @note.insert_at params[:position].to_i

    # Updates the new parent column id as owner of the note
    @note.update parent_column_id: params[:parent_column_id]
    @note.save

    head :ok
  end

  def create
    @board = Board.find params_board_id
    @note = @board.notes.create note_params

    redirect_to board_path @board
  end

  def destroy
    @board = Board.find params_board_id
    @note = @board.notes.find params[:id]
    @note.destroy

    redirect_to board_path @board
  end

  private
  def params_board_id
    params[:board_id]
  end

  def note_params
    params.require(:note).permit(:content)
  end
end
