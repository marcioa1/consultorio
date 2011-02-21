class TablePriceItemsController < ApplicationController

  def index
    @table_price = TablePrice.find params[:table_price_id]
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
