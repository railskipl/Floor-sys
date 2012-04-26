class ProductStyleTypesController < ApplicationController
  # GET /product_style_types
  # GET /product_style_types.xml
  def index
    @product_style_types = ProductStyleType.find_all_by_company_id(current_user.company_id)
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @product_style_types }
    end
  end

  # GET /product_style_types/1
  # GET /product_style_types/1.xml
  def show
    @product_style_type = ProductStyleType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product_style_type }
    end
  end

  # GET /product_style_types/new
  # GET /product_style_types/new.xml
  def new
    @product_style_type = ProductStyleType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product_style_type }
    end
  end

  # GET /product_style_types/1/edit
  def edit
    @product_style_type = ProductStyleType.find(params[:id])
  end

  # POST /product_style_types
  # POST /product_style_types.xml
  def create
    @product_style_type = ProductStyleType.new(params[:product_style_type])

    respond_to do |format|
      if @product_style_type.save
        format.html { redirect_to(@product_style_type, :notice => 'Product style type was successfully created.') }
        format.xml  { render :xml => @product_style_type, :status => :created, :location => @product_style_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product_style_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /product_style_types/1
  # PUT /product_style_types/1.xml
  def update
    @product_style_type = ProductStyleType.find(params[:id])

    respond_to do |format|
      if @product_style_type.update_attributes(params[:product_style_type])
        format.html { redirect_to(@product_style_type, :notice => 'Product style type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product_style_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /product_style_types/1
  # DELETE /product_style_types/1.xml
  def destroy
    @product_style_type = ProductStyleType.find(params[:id])
    @product_style_type.destroy

    respond_to do |format|
      format.html { redirect_to(product_style_types_url) }
      format.xml  { head :ok }
    end
  end
end
