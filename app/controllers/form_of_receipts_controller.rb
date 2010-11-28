class FormOfReceiptsController < ApplicationController

  # GET /testes
  # GET /teste.xml
  def index
    @form_of_receipts = FormOfReceipt.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /testes/1
  # GET /testes/1.xml
  def show
    @form_of_receipt = FormOfReceipt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /testes/new
  # GET /testes/new.xml
  def new
    @form_of_receits = FormOfReceipt.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /testes/1/edit
  def edit
    @form_of_receits = FormOfReceipt.find(params[:id])
  end

  # POST /testes
  # POST /teste.xml
  def create
    @form_of_receits = FormOfReceipt.new(params[:form_of_receits])

    respond_to do |format|
      if @form_of_receit.save
        format.html { redirect_to(@form_of_receits, :notice => 'Teste was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /testes/1
  # PUT /testes/1.xml
  def update
    @form_of_receits = FormOfReceipt.find(params[:id])

    respond_to do |format|
      if @form_of_receit.update_attributes(params[:form_of_receits])
        format.html { redirect_to(@form_of_receits, :notice => 'Teste was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /testes/1
  # DELETE /testes/1.xml
  def destroy
    @form_of_receits = FormOfReceipt.find(params[:id])
    @form_of_receit.destroy

    respond_to do |format|
      format.html { redirect_to(testes_url) }
    end
  end
end