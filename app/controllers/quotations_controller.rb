class QuotationsController < ApplicationController
   before_filter :authenticate_user!, :except => []
   load_and_authorize_resource
  
  # GET /quotations
  # GET /quotations.xml
  def index
    @quotations = Quotation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @quotations }
    end
  end

  # GET /quotations/1
  # GET /quotations/1.xml
  def show
    @quotation = Quotation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @quotation }
    end
  end

  # GET /quotations/new
  # GET /quotations/new.xml
  def new
    @quotation = Quotation.new
    @product = Product.find_all_by_company_id(current_user.company_id)
    @uom = Uom.all
    @supplier = Supplier.find_all_by_company_id(current_user.company_id)
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @quotation }
    end
  end

  # GET /quotations/1/edit
  def edit
    @quotation = Quotation.find(params[:id])
    @product = Product.find_all_by_company_id(current_user.company_id)
    @uom = Uom.all
    @supplier = Supplier.find_all_by_company_id(current_user.company_id)
  end

  # POST /quotations
  # POST /quotations.xml
  def create
    @quotation = Quotation.new(params[:quotation])

    respond_to do |format|
      if @quotation.save
        format.html { redirect_to(@quotation, :notice => 'Quotation was successfully created.') }
        format.xml  { render :xml => @quotation, :status => :created, :location => @quotation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @quotation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /quotations/1
  # PUT /quotations/1.xml
  def update
    @quotation = Quotation.find(params[:id])

    respond_to do |format|
      if @quotation.update_attributes(params[:quotation])
        format.html { redirect_to(@quotation, :notice => 'Quotation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @quotation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /quotations/1
  # DELETE /quotations/1.xml
  def destroy
    @quotation = Quotation.find(params[:id])
    @quotation.destroy

    respond_to do |format|
      format.html { redirect_to(quotations_url) }
      format.xml  { head :ok }
    end
  end
end
