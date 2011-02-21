class TablePricesController < ApplicationController
  
  before_filter :find_current_owner
  
  def index
    @table_prices = TablePrice.from_owner(session[:owner_id]).by_name
  end
  
  def new
    @table_price = TablePrice.new
  end
  
  def create
    @table_price = TablePrice.new(params[:table_price])
    @table_price.owner_id = session[:owner_id]
    if @table_price.save!
      flash[:notice] = "Tabela salva com sucesso."
      redirect_to table_prices_path
    else
      render :new
    end
  end
  
  def edit
    @table_price = TablePrice.find(params[:id])
  end
  
  def update
    @table_price = TablePrice.find(params[:id])
    if @table_price.update_attributes(params[:table_price])
      flash[:notice] = "table_price alterado com sucesso."
      redirect_to table_prices_path
    else
      render :action => :edit
    end
  end
  
  private
  
  def find_current_owner
    session[:owner_id] = 1
  end
  
end
