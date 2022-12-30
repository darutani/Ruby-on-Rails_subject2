class ReservesController < ApplicationController
  def new
    @room = Room.find(params[:room_id])
    @reserve = Reserve.new
    @start_date = params[:start_date].to_date
    @end_date = params[:end_date].to_date
    @total_days = (@end_date - @start_date).to_i
    @total_price = params[:number_people].to_i * @room.price
    
    @today = Date.today
    if @today > @start_date
      flash.now[:alert] = "過去日付は入力できません"
      return render "rooms/show"
    end

    if @end_date < @start_date
      flash.now[:alert] = "終了日は開始日より後日付を入力してください"
      return render "rooms/show"
    end

    unless params[:number_people].present?
      flash.now[:alert] = "人数の入力は必須です"
      render "rooms/show"
    end
  end

  def create
    @reserve = Reserve.new(reserve_params)
    if @reserve.save
      flash[:notice] = "予約が完了しました"
      redirect_to room_reserf_path(params[:room_id], @reserve.id) 
    else
    end

  end

  def index
    @rooms = 
    @reserves = Reserve.all
  end

  def show
    @room = Room.find(params[:room_id])
    @reserve = Reserve.find(params[:id])
  end

  private

  def reserve_params
    params.require(:reserve).permit(:start_date, :end_date, :total_price, :number_people).merge(user_id:current_user.id, room_id:params[:room_id])
  end

end
