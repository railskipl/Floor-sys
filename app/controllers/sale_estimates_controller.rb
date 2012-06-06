class SaleEstimatesController < ApplicationController
  
before_filter :authenticate_user!
before_filter :prepare_common_variables, :only => [:new, :show, :edit]
before_filter :find_basket, :only => [:add_basket_item, :remove_basket_item]

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
    
    @contacts = Contact.find_all_by_company_id(current_user.company_id)
    @product = Product.find_all_by_company_id(current_user.company_id) 
    @sale_estimate = SaleEstimate.new

  end

  # GET /sale_estimates/1/edit
  def edit
    @sale_estimate = SaleEstimate.find(params[:id])
  end

  
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
  
  def remove_basket_item
    @basket.items.delete_at(params[:array_position].to_i - 1)
    redirect_to new_sale_estimate_url
  end
  
  def add_basket_item
    @basket.add_product_quantity(Product.find(params[:product_id]), BigDecimal.new(params[:quantity]))
    redirect_to new_sale_estimate_url(:id => params[:id])
  end
  
  def find_basket
    @basket = session[:basket] ||= Basket.new
  end
  
  protected
  
  def prepare_common_variables
    @available_products = []
    @basket = find_basket
  end
  
end
