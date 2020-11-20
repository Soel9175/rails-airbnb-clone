class BookingsController < ApplicationController
  def create
    @booking = Booking.new(strong_params)
    @item = Item.find(params[:item_id])
    @booking.item = @item
    @booking.user = current_user

    if @booking.valid?
      @booking.save
      redirect_to pages_account
    end
  end

  def strong_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
