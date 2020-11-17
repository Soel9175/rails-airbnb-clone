class BookingsController < ApplicationController
  def new 
    @booking = Booking.new
    @item = Item.find(params[:item_id])
  end

  def create 
    @booking = Booking.create(strong_params)
    redirect_to pages_thankyou_path
  end

  def strong_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
