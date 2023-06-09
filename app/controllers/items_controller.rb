class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_item, only: [:edit, :update, :show, :destroy]

  def index
    @items = Item.order(created_at: :desc)
  end


  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end


  def show
  end


  def edit
    if @item.user_id == current_user.id && @item.management.nil?
    else
      redirect_to root_path
    end
  end


  def update
    if @item.update(item_params)
      redirect_to item_path(@item.id)
    else
      render 'edit'
    end
  end


  def destroy
      if @item.user_id == current_user.id
        @item.destroy
        redirect_to root_path
      else
        redirect_to root_path
      end
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :description, :price, :condition_id, :shipping_charge_id, :area_id, :delivery_time_id, :category_id).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end