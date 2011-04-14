class PatientsController < ApplicationController

  before_filter :retrieve_table_prices
  def new
    @patient = Patient.new
  end

  def create
    @patient = TablePrice.new(params[:patient])
    @patient.owner_id = session[:owner_id]
    if @table_price.save!
      flash[:notice] = "Tabela salva com sucesso."
      redirect_to table_prices_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  def search
    
  end
  
  protected
  
  def retrieve_table_prices
    @table_prices = TablePrice.active
  end

end
