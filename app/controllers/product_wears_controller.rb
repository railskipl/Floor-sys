class ProductWearsController < ApplicationController
  # GET /product_wears
  # GET /product_wears.xml
  def index
    @product_wears = ProductWear.find_all_by_company_id(current_user.company_id)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @product_wears }
    end
  end

  # GET /product_wears/1
  # GET /product_wears/1.xml
  def show
    @product_wear = ProductWear.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product_wear }
    end
  end

  # GET /product_wears/new
  # GET /product_wears/new.xml
  def new
    @product_wear = ProductWear.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product_wear }
    end
  end

  # GET /product_wears/1/edit
  def edit
    @product_wear = ProductWear.find(params[:id])
  end

  # POST /product_wears
  # POST /product_wears.xml
  def create
    @product_wear = ProductWear.new(params[:product_wear])

    respond_to do |format|
      if @product_wear.save
        format.html { redirect_to(@product_wear, :notice => 'Product wear was successfully created.') }
        format.xml  { render :xml => @product_wear, :status => :created, :location => @product_wear }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product_wear.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /product_wears/1
  # PUT /product_wears/1.xml
  def update
    @product_wear = ProductWear.find(params[:id])

    respond_to do |format|
      if @product_wear.update_attributes(params[:product_wear])
        format.html { redirect_to(@product_wear, :notice => 'Product wear was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product_wear.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /product_wears/1
  # DELETE /product_wears/1.xml
  def destroy
    @product_wear = ProductWear.find(params[:id])
    @product_wear.destroy

    respond_to do |format|
      format.html { redirect_to(product_wears_url) }
      format.xml  { head :ok }
    end
  end
end
