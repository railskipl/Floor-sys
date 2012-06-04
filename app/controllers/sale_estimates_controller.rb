class SaleEstimatesController < ApplicationController
  # GET /sale_estimates
  # GET /sale_estimates.xml
  def index
    @sale_estimates = SaleEstimate.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sale_estimates }
    end
  end

  # GET /sale_estimates/1
  # GET /sale_estimates/1.xml
  def show
    @sale_estimate = SaleEstimate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sale_estimate }
    end
  end

  # GET /sale_estimates/new
  # GET /sale_estimates/new.xml
  def new
    @sale_estimate = SaleEstimate.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sale_estimate }
    end
  end

  # GET /sale_estimates/1/edit
  def edit
    @sale_estimate = SaleEstimate.find(params[:id])
  end

  # POST /sale_estimates
  # POST /sale_estimates.xml
  def create
    @sale_estimate = SaleEstimate.new(params[:sale_estimate])

    respond_to do |format|
      if @sale_estimate.save
        format.html { redirect_to(@sale_estimate, :notice => 'Sale estimate was successfully created.') }
        format.xml  { render :xml => @sale_estimate, :status => :created, :location => @sale_estimate }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sale_estimate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sale_estimates/1
  # PUT /sale_estimates/1.xml
  def update
    @sale_estimate = SaleEstimate.find(params[:id])

    respond_to do |format|
      if @sale_estimate.update_attributes(params[:sale_estimate])
        format.html { redirect_to(@sale_estimate, :notice => 'Sale estimate was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sale_estimate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sale_estimates/1
  # DELETE /sale_estimates/1.xml
  def destroy
    @sale_estimate = SaleEstimate.find(params[:id])
    @sale_estimate.destroy

    respond_to do |format|
      format.html { redirect_to(sale_estimates_url) }
      format.xml  { head :ok }
    end
  end
end
