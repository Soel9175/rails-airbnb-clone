class BookingsController < ApplicationController
  def new 
    @booking = Booking.new
    @item = Item.find(params[:item_id])
  end

  def create 
    @booking = Booking.new(strong_params)
    @item = Item.find(params[:item_id])
    @booking.item = @item
    @booking.user = current_user
    
    if @booking.valid?
      @booking.save
      redirect_to pages_thankyou_path
    else
      render :new
    end
  end

  def strong_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
