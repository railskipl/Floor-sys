class ProductFibresController < ApplicationController
  # GET /product_fibres
  # GET /product_fibres.xml
  def index
    @product_fibres = ProductFibre.find_all_by_company_id(current_user.company_id)
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @product_fibres }
    end
  end

  # GET /product_fibres/1
  # GET /product_fibres/1.xml
  def show
    @product_fibre = ProductFibre.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product_fibre }
    end
  end

  # GET /product_fibres/new
  # GET /product_fibres/new.xml
  def new
    @product_fibre = ProductFibre.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product_fibre }
    end
  end

  # GET /product_fibres/1/edit
  def edit
    @product_fibre = ProductFibre.find(params[:id])
  end

  # POST /product_fibres
  # POST /product_fibres.xml
  def create
    @product_fibre = ProductFibre.new(params[:product_fibre])

    respond_to do |format|
      if @product_fibre.save
        format.html { redirect_to(@product_fibre, :notice => 'Product fibre was successfully created.') }
        format.xml  { render :xml => @product_fibre, :status => :created, :location => @product_fibre }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product_fibre.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /product_fibres/1
  # PUT /product_fibres/1.xml
  def update
    @product_fibre = ProductFibre.find(params[:id])

    respond_to do |format|
      if @product_fibre.update_attributes(params[:product_fibre])
        format.html { redirect_to(@product_fibre, :notice => 'Product fibre was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product_fibre.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /product_fibres/1
  # DELETE /product_fibres/1.xml
  def destroy
    @product_fibre = ProductFibre.find(params[:id])
    @product_fibre.destroy

    respond_to do |format|
      format.html { redirect_to(product_fibres_url) }
      format.xml  { head :ok }
    end
  end
end
