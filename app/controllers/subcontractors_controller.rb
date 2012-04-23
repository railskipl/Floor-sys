class SubcontractorsController < ApplicationController
  
  before_filter :authenticate_user!, :except => []
  
  # GET /subcontractors
  # GET /subcontractors.xml
  def index
    @subcontractors = Subcontractor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @subcontractors }
    end
  end

  # GET /subcontractors/1
  # GET /subcontractors/1.xml
  def show
    @subcontractor = Subcontractor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @subcontractor }
    end
  end

  # GET /subcontractors/new
  # GET /subcontractors/new.xml
  def new
    @subcontractor = Subcontractor.new
    
    @contact = Contact.find_all_by_company_id(current_user.company_id)

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @subcontractor }
    end
  end

  # GET /subcontractors/1/edit
  def edit
    @subcontractor = Subcontractor.find(params[:id])
    @contact = Contact.find_all_by_company_id(current_user.company_id)
    
  end

  # POST /subcontractors
  # POST /subcontractors.xml
  def create
    @subcontractor = Subcontractor.new(params[:subcontractor])

    respond_to do |format|
      if @subcontractor.save
        format.html { redirect_to(@subcontractor, :notice => 'Subcontractor was successfully created.') }
        format.xml  { render :xml => @subcontractor, :status => :created, :location => @subcontractor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @subcontractor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /subcontractors/1
  # PUT /subcontractors/1.xml
  def update
    @subcontractor = Subcontractor.find(params[:id])

    respond_to do |format|
      if @subcontractor.update_attributes(params[:subcontractor])
        format.html { redirect_to(@subcontractor, :notice => 'Subcontractor was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @subcontractor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /subcontractors/1
  # DELETE /subcontractors/1.xml
  def destroy
    @subcontractor = Subcontractor.find(params[:id])
    @subcontractor.destroy

    respond_to do |format|
      format.html { redirect_to(subcontractors_url) }
      format.xml  { head :ok }
    end
  end
end
