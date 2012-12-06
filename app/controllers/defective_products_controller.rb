class DefectiveProductsController < ApplicationController
  
   def index
    @defective_products = DefectiveProduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @defective_products }
    end
  end

  # GET /defective_products/1
  # GET /defective_products/1.xml
  def show
    @defective_product = DefectiveProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @defective_product }
    end
  end

  # GET /defective_products/new
  # GET /defective_products/new.xml
  def new
    @defective_product = DefectiveProduct.new
    @product = Product.all
    @uom = Uom.all
    @unit = PurchaseOrderItem.find_all_by_product_id(params[:product_id])
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @defective_product }
    end
  end

  
  def find1   
     @unit = PurchaseOrderItem.find_by_product_id(params[:product_id])    
     @uom = Uom.find_by_product_id(params[:product_id])
     render :update do |page|
         page.replace_html 'unit', :partial => 'defective_products/unit'
     end
  end


  # GET /defective_products/1/edit
  def edit
    @defective_product = DefectiveProduct.find(params[:id])
  end

  # POST /defective_products
  # POST /defective_products.xml
  def create
    @defective_product = DefectiveProduct.new(params[:defective_product])

    respond_to do |format|
      if @defective_product.save
        format.html { redirect_to(@defective_product, :notice => 'defective_product was successfully created.') }
        format.xml  { render :xml => @defective_product, :status => :created, :location => @defective_product }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @defective_product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /defective_products/1
  # PUT /defective_products/1.xml
  
  def update
    @defective_product = DefectiveProduct.find(params[:id])

    respond_to do |format|
      if @defective_product.update_attributes(params[:defective_product])
        format.html { redirect_to(@defective_product, :notice => 'defective_product was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @defective_product.errors, :status => :unprocessable_entity }
      end
    end
  end
 
  # DELETE /defective_products/1
  # DELETE /defective_products/1.xml
  def destroy
    @defective_product = DefectiveProduct.find(params[:id])
    @defective_product.destroy

    respond_to do |format|
      format.html { redirect_to(defective_products_url) }
      format.xml  { head :ok }
    end
  end
  
end
