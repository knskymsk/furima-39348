class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @items = Item.order("created_at DESC")
  end


  def new
    @item = Item.new
  end
  

  def create
    @item = Item.new(item_params)
    unless @item.valid?
      render :new
    else
      @item.save
      redirect_to root_path
    end
  end


  private

  def item_params
    params.require(:item).permit(:image, :name, :description, :price, :condition_id, :shipping_charge_id, :area_id, :delivery_time_id, :category_id, :user).merge(user_id: current_user.id)
  end
end
