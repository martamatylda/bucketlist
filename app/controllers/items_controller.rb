class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    @item = Item.find params[:id]
  end

  def new
    @item = Item.new
  end

  def create
    # puts "lol"
    # puts params
    @item = Item.new item_params
    @item.save
    redirect_to item_path
  end

  def edit
    @item = Item.find params[:id]
  end

  def update
    @item = Item.find params[:id]
    @item.update item_params
    redirect_to item_path(@item.id)
  end

  private
    def item_params
      params.require(:item).permit(:title, :description)
    end



end
