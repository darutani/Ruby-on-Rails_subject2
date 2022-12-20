class RoomsController < ApplicationController
  def index
    @rooms = Room.all
    @rooms = @rooms.where('address LIKE ?', "%#{params[:search]}%") if params[:search].present?
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def top
  end
end
