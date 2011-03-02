class TablePriceItemsController < ApplicationController

  def index
    @table_price      = TablePrice.find params[:table_price_id]
    @table_price_item = TablePriceItem.new(:table_price_id => @table_price.id,
                                           :price => 0.0)
  end

  def new
  end

  def create
    price = params[:price].gsub('.', '').gsub(',','.')
    @table_price_item = TablePriceItem.new(:table_price_id => params[:table_price_id],
           :code => params[:code], :name => params[:name], :price => price )
    if @table_price_item.save
      render :partial => 'tr_table_price_item', :locals => { :item => @table_price_item }
    else
      :head_ok
    end
  end

  def edit
  end

  def update
   @table_price_item = TablePriceItem.find(params[:id])
   puts "parametros"
   puts params
   puts "registro antes"
   puts @table_price_item.inspect
   @table_price_item.update_attribute('code', params[:code])
   @table_price_item.update_attribute('name', params[:name])
   @table_price_item.update_attribute('price', params[:price])
   @table_price_item.update_attribute('active', params[:active])
   
   if @table_price_item.valid?
     puts "registro depois"
     puts @table_price_item.inspect
     render :partial => 'tr_table_price_item', :locals => { :item => @table_price_item }
   else
     # :bad_request
   end
  end

  def destroy
    @table_price_item = TablePriceItem.find(params[:id])
    @table_price_item.delete
    render :json => 'item_deleted'.to_json
  end
  
end
