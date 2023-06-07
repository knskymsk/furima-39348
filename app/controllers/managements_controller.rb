class ManagementsController < ApplicationController
  before_action :authenticate_user!
  before_action :non_purchase_item, only: [:index, :create]

  def index
    @management_purchase = ManagementPurchase.new
  end

  def create
    @management_purchase = ManagementPurchase.new(management_params)
    if @management_purchase.valid?
      pay_item
      @management_purchase.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def management_params
    params.require(:management_purchase).permit(:zip_code, :area_id, :city, :address, :building_name, :phone_number).merge(user_id: current_user.id, item_id: params[:item_id])
  end

  def non_purchase_item
    @item = Item.find(params[:item_id])
  end
end
