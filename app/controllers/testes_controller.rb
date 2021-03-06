class TestesController < ApplicationController
  # GET /testes
  # GET /testes.xml
  def index
    @testes = Teste.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @testes }
    end
  end

  # GET /testes/1
  # GET /testes/1.xml
  def show
    @testis = Teste.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @testis }
    end
  end

  # GET /testes/new
  # GET /testes/new.xml
  def new
    @testis = Teste.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @testis }
    end
  end

  # GET /testes/1/edit
  def edit
    @testis = Teste.find(params[:id])
  end

  # POST /testes
  # POST /testes.xml
  def create
    @testis = Teste.new(params[:testis])

    respond_to do |format|
      if @testis.save
        format.html { redirect_to(@testis, :notice => 'Teste was successfully created.') }
        format.xml  { render :xml => @testis, :status => :created, :location => @testis }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @testis.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /testes/1
  # PUT /testes/1.xml
  def update
    @testis = Teste.find(params[:id])

    respond_to do |format|
      if @testis.update_attributes(params[:testis])
        format.html { redirect_to(@testis, :notice => 'Teste was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @testis.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /testes/1
  # DELETE /testes/1.xml
  def destroy
    @testis = Teste.find(params[:id])
    @testis.destroy

    respond_to do |format|
      format.html { redirect_to(testes_url) }
      format.xml  { head :ok }
    end
  end
end
