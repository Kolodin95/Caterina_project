class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new 
    @item = Item.new  
  end
  
  def create
    @item = Item.new(item_params)
    @item.save
  end
  
  def show

  end

  private

  def item_params
    params.require(:item).permit(:title, :description, :price, :photo)
  end
  

end
