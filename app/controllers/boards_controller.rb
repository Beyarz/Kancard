class BoardsController < ApplicationController
  before_action :authenticate_user!

  def index
    @current_user = current_user
    @boards = Board.all.where(owner_id: current_user.id).or(Board.all.where(invited: @current_user.id))
  end

  def show
    @board = Board.find params_id
    @current_user = current_user

    @messages = @board.messages.all
    @notes = @board.notes.all.order position: :asc
    @cards = @board.cards.all
  end

  def new
    @board = Board.new
    @owner = current_user
  end

  def create
    @board = Board.create permitted_params

    if @board.save
      redirect_to @board
    else
      render :new
    end
  end

  def edit
    @board = Board.find params_id
    @owner = current_user
  end

  def update
    @board = Board.find params_id

    if @board.update permitted_params
      redirect_to boards_path
    else
      render :edit
    end
  end

  def destroy
    @board = Board.find params_id
    @board.destroy

    redirect_to boards_path
  end

  private
  def params_id
    params[:id]
  end

  def permitted_params
    params.require(:board).permit(:name, :description, :owner, :owner_id, :invited)
  end
end
