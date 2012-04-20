class VatsController < ApplicationController
 before_filter :authenticate_user!, :except => []
 
  # GET /vats.xml
  def index
  
   if params[:company_id]
     
    @vats = Vat.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vats }
    end
   else
        redirect_to("/dashboard", :notice => 'Please create company.')
   end
  end

  # GET /vats/1
  # GET /vats/1.xml
  def show
    @vat = Vat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vat }
    end
  end

  # GET /vats/new
  # GET /vats/new.xml
  def new
   if params[:company_id]
    @vat = Vat.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vat }
    end
     else
            redirect_to("/dashboard")
       end
  end

  # GET /vats/1/edit
  def edit
    if params[:company_id]
      @vat = Vat.find(params[:id])
    else
          redirect_to("/dashboard")
     end
  end

  # POST /vats
  # POST /vats.xml
  def create
    @vat = Vat.new(params[:vat])

    respond_to do |format|
      if @vat.save
        format.html { redirect_to(@vat, :notice => 'Vat was successfully created.') }
        format.xml  { render :xml => @vat, :status => :created, :location => @vat }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vats/1
  # PUT /vats/1.xml
  def update
    @vat = Vat.find(params[:id])

    respond_to do |format|
      if @vat.update_attributes(params[:vat])
        format.html { redirect_to(@vat, :notice => 'Vat was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vats/1
  # DELETE /vats/1.xml
  def destroy
    @vat = Vat.find(params[:id])
    @vat.destroy

    respond_to do |format|
      format.html { redirect_to(vats_url) }
      format.xml  { head :ok }
    end
  end
end
