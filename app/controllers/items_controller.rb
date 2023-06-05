class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @items = Item.all.order("created_at DESC")
    #@items = Item.order("created_at DESC")
  end


  def new
    @item = Item.new
  end


  def show
    @item = Item.find(params[:id])
  end


  def edit
    @item = Item.find(params[:id])
  end


  def update
    @item = Item.find(params[:id])
  
    if @item.update(item_params)
      redirect_to item_path(@item)
    else
      render :edit
    end
  end


  private

  def item_params
    params.require(:item).permit(:image, :name, :description, :price, :condition_id, :shipping_charge_id, :area_id, :delivery_time_id, :category_id).merge(user_id: current_user.id)
  end


end
