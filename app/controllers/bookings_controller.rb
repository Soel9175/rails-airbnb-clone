class BookingsController < ApplicationController
  def new 
    @booking = Booking.new
    @item = Item.find(params[:item_id])
  end
end
