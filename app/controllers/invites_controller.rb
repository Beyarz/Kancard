# frozen_string_literal: true

class InvitesController < ApplicationController
  # @route GET /boards/:board_id/invites/new (new_board_invite)
  def new
    @board = Board.find params_board_id
    @invited = @board.invites.all
    @current_user = current_user
  end

  # @route POST /boards/:board_id/invites (board_invites)
  def create
    @board = Board.find params_board_id
    @invite = @board.invites.create permitted_params

    redirect_to board_path @board
  end

  # @route DELETE /boards/:board_id/invites/:id (board_invite)
  def destroy
    @board = Board.find params_board_id
    @invite = @board.invites.find params_id
    @invite.destroy

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
      params.require(:invite).permit(:user_id)
    end
end
