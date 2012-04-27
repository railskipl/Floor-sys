class OutgoingTypesController < ApplicationController
  
  before_filter :authenticate_user!, :except => []
  load_and_authorize_resource
  
  # GET /outgoing_types
  # GET /outgoing_types.xml
  def index
   
     if params[:company_id]

     @outgoing_types = OutgoingType.find_all_by_company_id(params[:company_id])
     

      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @outgoing_types }
      end
     else
          redirect_to("/dashboard", :notice => 'Please create company.')
     end
  end

  # GET /outgoing_types/1
  # GET /outgoing_types/1.xml
  def show

    @outgoing_type = OutgoingType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @outgoing_type }
    end
   
  end

  # GET /outgoing_types/new
  # GET /outgoing_types/new.xml
  def new
    if params[:company_id]
      @outgoing_type = OutgoingType.new

      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @outgoing_type }
      end
       else
              redirect_to("/dashboard")
         end
  end

  # GET /outgoing_types/1/edit
  def edit
    
      @outgoing_type = OutgoingType.find(params[:id])
     
  end

  # POST /outgoing_types
  # POST /outgoing_types.xml
  def create
    @outgoing_type = OutgoingType.new(params[:outgoing_type])

    respond_to do |format|
      if @outgoing_type.save
        format.html { redirect_to(@outgoing_type, :notice => 'Outgoing type was successfully created.') }
        format.xml  { render :xml => @outgoing_type, :status => :created, :location => @outgoing_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @outgoing_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /outgoing_types/1
  # PUT /outgoing_types/1.xml
  def update
    @outgoing_type = OutgoingType.find(params[:id])

    respond_to do |format|
      if @outgoing_type.update_attributes(params[:outgoing_type])
        format.html { redirect_to(@outgoing_type, :notice => 'Outgoing type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @outgoing_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /outgoing_types/1
  # DELETE /outgoing_types/1.xml
  def destroy
    @outgoing_type = OutgoingType.find(params[:id])
    @outgoing_type.destroy

    respond_to do |format|
       format.html { redirect_to({:controller=>"outgoing_types", :action=>"index", :company_id=>"#{@outgoing_type.company_id}"}) }
      format.xml  { head :ok }
    end
  end
end
