class ItemsController < ApplicationController

   before_action :set_item, only: [:show, :edit, :update, :destroy]
   skip_before_action :authenticate_user!, only: [:index, :show]

  # GET /items
  def index
    @items = Item.all
  end

  # GET /items/1
  def show
    @item_id = params[:id]
    @booking = Booking.new
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  def create
    @item = Item.new(item_params)
    @item.available = true
    @item.user = current_user
     if @item.save
      redirect_to @item, notice: 'Item was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /items/1
  def update
    if @item.update(item_params)
      redirect_to @item, notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /items/1
  def destroy
    @item.destroy
    redirect_to items_url, notice: 'Item was successfully destroyed.'
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def item_params
      params.require(:item).permit(:name, :item_type, :size, :gender, :price, :brand, :initial_condition, photos: [])
    end

end


