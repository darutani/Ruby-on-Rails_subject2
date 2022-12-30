class RoomsController < ApplicationController
  def index
    @rooms = Room.where(user_id: current_user.id)
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      flash[:notice] = "ルームを登録しました"
      redirect_to room_path(@room.id)
    else
      render new_room_path
    end
  end

  def show
    @room = Room.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def top
  end

  def search
    if params[:search_address].present?
      @rooms = Room.where('address LIKE ?', "%#{params[:search_address]}%") 
    elsif params[:search_key].present?
      @rooms = Room.where('name LIKE ? OR introduction LIKE ?', "%#{params[:search_key]}%", "%#{params[:search_key]}%") 
    end
  end


  private

  def room_params
    params.require(:room).permit(:name, :introduction, :price, :address, :room_image).merge(user_id:current_user.id)
  end

end
