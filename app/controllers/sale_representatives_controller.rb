class SaleRepresentativesController < ApplicationController
  # GET /sale_representatives
  # GET /sale_representatives.xml
  def index
    @sale_representatives = SaleRepresentative.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sale_representatives }
    end
  end

  # GET /sale_representatives/1
  # GET /sale_representatives/1.xml
  def show
    @sale_representative = SaleRepresentative.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sale_representative }
    end
  end

  # GET /sale_representatives/new
  # GET /sale_representatives/new.xml
  def new
    @sale_representative = SaleRepresentative.new
    @contact = Contact.find_all_by_company_id(current_user.company_id)

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sale_representative }
    end
  end

  # GET /sale_representatives/1/edit
  def edit
    @sale_representative = SaleRepresentative.find(params[:id])
    @contact = Contact.find_all_by_company_id(current_user.company_id)
  end

  # POST /sale_representatives
  # POST /sale_representatives.xml
  def create
    @sale_representative = SaleRepresentative.new(params[:sale_representative])

    respond_to do |format|
      if @sale_representative.save
        format.html { redirect_to(@sale_representative, :notice => 'Sale representative was successfully created.') }
        format.xml  { render :xml => @sale_representative, :status => :created, :location => @sale_representative }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sale_representative.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sale_representatives/1
  # PUT /sale_representatives/1.xml
  def update
    @sale_representative = SaleRepresentative.find(params[:id])

    respond_to do |format|
      if @sale_representative.update_attributes(params[:sale_representative])
        format.html { redirect_to(@sale_representative, :notice => 'Sale representative was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sale_representative.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sale_representatives/1
  # DELETE /sale_representatives/1.xml
  def destroy
    @sale_representative = SaleRepresentative.find(params[:id])
    @sale_representative.destroy

    respond_to do |format|
      format.html { redirect_to(sale_representatives_url) }
      format.xml  { head :ok }
    end
  end
end
