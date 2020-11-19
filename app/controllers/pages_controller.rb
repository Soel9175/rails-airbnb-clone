class PagesController < ApplicationController
  def home
  end

  def thankyou
  end

  def account
    @bookings = current_user.bookings
    @items = current_user.items
  end

end
