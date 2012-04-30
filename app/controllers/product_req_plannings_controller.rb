class ProductReqPlanningsController < ApplicationController
  before_filter :authenticate_user!, :except => []
   load_and_authorize_resource
  
  # GET /product_req_plannings
  # GET /product_req_plannings.xml
  def index
    @product_req_plannings = ProductReqPlanning.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @product_req_plannings }
    end
  end

  # GET /product_req_plannings/1
  # GET /product_req_plannings/1.xml
  def show
    @product_req_planning = ProductReqPlanning.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product_req_planning }
    end
  end

  # GET /product_req_plannings/new
  # GET /product_req_plannings/new.xml
  def new
    @product_req_planning = ProductReqPlanning.new
    @product = Product.find_all_by_company_id(current_user.company_id)
    @uom = Uom.all
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product_req_planning }
    end
  end

  # GET /product_req_plannings/1/edit
  def edit
    @product_req_planning = ProductReqPlanning.find(params[:id])
  end

  # POST /product_req_plannings
  # POST /product_req_plannings.xml
  def create
    @product_req_planning = ProductReqPlanning.new(params[:product_req_planning])

    respond_to do |format|
      if @product_req_planning.save
        format.html { redirect_to(@product_req_planning, :notice => 'Product req planning was successfully created.') }
        format.xml  { render :xml => @product_req_planning, :status => :created, :location => @product_req_planning }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product_req_planning.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /product_req_plannings/1
  # PUT /product_req_plannings/1.xml
  def update
    @product_req_planning = ProductReqPlanning.find(params[:id])

    respond_to do |format|
      if @product_req_planning.update_attributes(params[:product_req_planning])
        format.html { redirect_to(@product_req_planning, :notice => 'Product req planning was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product_req_planning.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /product_req_plannings/1
  # DELETE /product_req_plannings/1.xml
  def destroy
    @product_req_planning = ProductReqPlanning.find(params[:id])
    @product_req_planning.destroy

    respond_to do |format|
      format.html { redirect_to(product_req_plannings_url) }
      format.xml  { head :ok }
    end
  end
end
