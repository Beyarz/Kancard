class BoardsController < ApplicationController
  before_action :authenticate_user!

  def index
    @boards = Board.all
  end

  def show
    @board = Board.find params_id
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.create permitted_board_params
    if @board.save
      redirect_to @board
    else
      render :new
    end
  end

  def edit
    @board = Board.find params_id
  end

  def update
    @board = Board.find params_id
    if @board.update permitted_board_params
      redirect_to boards_path
    else
      render :edit
    end
  end

  def destroy
    @board = Board.find(params_id)
    @board.destroy
    redirect_to boards_path
  end

  private
  def params_id
    params[:id]
  end

  def permitted_board_params
    params.require(:board).permit(:name, :description)
  end
end
