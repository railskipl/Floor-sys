class ProductsController < ApplicationController
  
  before_filter :authenticate_user!, :except => []
  load_and_authorize_resource
  
  # GET /products
  # GET /products.xml
  def index
    @products = Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @products }
    end
  end

  # GET /products/1
  # GET /products/1.xml
  def show
    @product = Product.find(params[:id])
    
    #multi-collection for show
    @product.categories = Category.find(params[:category_ids]) if params[:category_ids]

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product }
    end
  end

  # GET /products/new
  # GET /products/new.xml
  def new
    @product = Product.new
    @categories = Category.find(:all)
    @producttype = ProductType.find_all_by_company_id(current_user.company_id)
    @productgroup = ProductGroup.find_all_by_company_id(current_user.company_id)
    @supplier = Supplier.find_all_by_company_id(current_user.company_id)
    @productfibre = ProductFibre.find_all_by_company_id(current_user.company_id)
    @productbacking = ProductBacking.find_all_by_company_id(current_user.company_id)
    @productwear = ProductWear.find_all_by_company_id(current_user.company_id)
    @productstyletype = ProductStyleType.find_all_by_company_id(current_user.company_id)
    
    
    1.times do
      product_price = @product.product_prices.build
    end
    
    1.times do
      uom = @product.uoms.build
    end

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product }
    end
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
    @categories = Category.find(:all)
    @producttype = ProductType.find_all_by_company_id(current_user.company_id)
    @productgroup = ProductGroup.find_all_by_company_id(current_user.company_id)
    @supplier = Supplier.find_all_by_company_id(current_user.company_id)
    @productfibre = ProductFibre.find_all_by_company_id(current_user.company_id)
    @productbacking = ProductBacking.find_all_by_company_id(current_user.company_id)
    @productwear = ProductWear.find_all_by_company_id(current_user.company_id)
    @productstyletype = ProductStyleType.find_all_by_company_id(current_user.company_id)
    
    
    
    
  end

  # POST /products
  # POST /products.xml
  def create
    @product = Product.new(params[:product])
    
    # multiselection functionality
    @product.categories = Category.find(params[:category_ids]) if params[:category_ids]

    respond_to do |format|
      if @product.save
        format.html { redirect_to(@product, :notice => 'Product was successfully created.') }
        format.xml  { render :xml => @product, :status => :created, :location => @product }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.xml
  def update
    @product = Product.find(params[:id])
    
     # multiselection functionality
      @product.categories = Category.find(params[:category_ids]) if params[:category_ids]

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to(@product, :notice => 'Product was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.xml
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to(products_url) }
      format.xml  { head :ok }
    end
  end
end