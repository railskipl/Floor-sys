class SalesTypesController < ApplicationController
  
  before_filter :authenticate_user!, :except => []
  load_and_authorize_resource
  
  # GET /sales_types
  # GET /sales_types.xml
  def index
       

         @sales_types = SalesType.find_all_by_company_id(current_user.company_id)
         

        respond_to do |format|
          format.html # index.html.erb
          format.xml  { render :xml =>  @sales_types }
        end
       
  end

  # GET /sales_types/1
  # GET /sales_types/1.xml
  def show

    @sales_type = SalesType.find(params[:id])
   
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sales_type }
    end
  
  end

  # GET /sales_types/new
  # GET /sales_types/new.xml
  def new
     
        @sales_type = SalesType.new

        respond_to do |format|
          format.html # new.html.erb
          format.xml  { render :xml => @outgoing_type }
        end
         
  end

  # GET /sales_types/1/edit
  def edit
     if params[:company_id]
     @sales_type = SalesType.find(params[:id])
      else
            redirect_to("/dashboard")
       end
  end

  # POST /sales_types
  # POST /sales_types.xml
  def create
    @sales_type = SalesType.new(params[:sales_type])

    respond_to do |format|
      if @sales_type.save
        format.html { redirect_to(@sales_type, :notice => 'Sales type was successfully created.') }
        format.xml  { render :xml => @sales_type, :status => :created, :location => @sales_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sales_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sales_types/1
  # PUT /sales_types/1.xml
  def update
    @sales_type = SalesType.find(params[:id])

    respond_to do |format|
      if @sales_type.update_attributes(params[:sales_type])
        format.html { redirect_to(@sales_type, :notice => 'Sales type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sales_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_types/1
  # DELETE /sales_types/1.xml
  def destroy
    @sales_type = SalesType.find(params[:id])
    @sales_type.destroy

    respond_to do |format|
      format.html { redirect_to({:controller=>"sales_types", :action=>"index"}) }
      format.xml  { head :ok }
    end
  end
end
