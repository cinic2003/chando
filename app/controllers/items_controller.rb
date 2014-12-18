class ItemsController < ApplicationController
  def index
    @items = Item.all
    @item = Item.new
  end
  
  def create
    item = Item.new(item_params)
    item.save
    redirect_to :back
  end
  
  private
  
  def item_params
    params[:item].permit(:name, :price, :category_id)
  end
  
end
