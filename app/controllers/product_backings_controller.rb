class ProductBackingsController < ApplicationController
  
  before_filter :authenticate_user!, :except => []
  load_and_authorize_resource
  
  # GET /product_backings
  # GET /product_backings.xml
  def index
    @product_backings = ProductBacking.find_all_by_company_id(current_user.company_id)
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @product_backings }
    end
  end

  # GET /product_backings/1
  # GET /product_backings/1.xml
  def show
    @product_backing = ProductBacking.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product_backing }
    end
  end

  # GET /product_backings/new
  # GET /product_backings/new.xml
  def new
    @product_backing = ProductBacking.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product_backing }
    end
  end

  # GET /product_backings/1/edit
  def edit
    @product_backing = ProductBacking.find(params[:id])
  end

  # POST /product_backings
  # POST /product_backings.xml
  def create
    @product_backing = ProductBacking.new(params[:product_backing])

    respond_to do |format|
      if @product_backing.save
        format.html { redirect_to(@product_backing, :notice => 'Product backing was successfully created.') }
        format.xml  { render :xml => @product_backing, :status => :created, :location => @product_backing }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product_backing.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /product_backings/1
  # PUT /product_backings/1.xml
  def update
    @product_backing = ProductBacking.find(params[:id])

    respond_to do |format|
      if @product_backing.update_attributes(params[:product_backing])
        format.html { redirect_to(@product_backing, :notice => 'Product backing was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product_backing.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /product_backings/1
  # DELETE /product_backings/1.xml
  def destroy
    @product_backing = ProductBacking.find(params[:id])
    @product_backing.destroy

    respond_to do |format|
      format.html { redirect_to(product_backings_url) }
      format.xml  { head :ok }
    end
  end
end
