class TablePriceItemsController < ApplicationController

  def index
    @table_price      = TablePrice.find params[:table_price_id]
    @table_price_item = TablePriceItem.new(:table_price_id => @table_price.id,
                                           :price => 0.0)
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

end
