class CreditControlsController < ApplicationController
  # GET /credit_controls
  # GET /credit_controls.xml
  def index
    @credit_controls = CreditControl.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @credit_controls }
    end
  end

  # GET /credit_controls/1
  # GET /credit_controls/1.xml
  def show
    @credit_control = CreditControl.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @credit_control }
    end
  end

  # GET /credit_controls/new
  # GET /credit_controls/new.xml
  def new
    @credit_control = CreditControl.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @credit_control }
    end
  end

  # GET /credit_controls/1/edit
  def edit
    @credit_control = CreditControl.find(params[:id])
  end

  # POST /credit_controls
  # POST /credit_controls.xml
  def create
    @credit_control = CreditControl.new(params[:credit_control])

    respond_to do |format|
      if @credit_control.save
        format.html { redirect_to(new_contact_credit_control_path, :notice => 'Credit control was successfully created.') }
        format.xml  { render :xml => @credit_control, :status => :created, :location => @credit_control }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @credit_control.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /credit_controls/1
  # PUT /credit_controls/1.xml
  def update
    @credit_control = CreditControl.find(params[:id])

    respond_to do |format|
      if @credit_control.update_attributes(params[:credit_control])
        format.html { redirect_to(new_contact_credit_control_path(@credit_control.contact_id), :notice => 'Credit control was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @credit_control.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /credit_controls/1
  # DELETE /credit_controls/1.xml
  def destroy
    @credit_control = CreditControl.find(params[:id])
    @credit_control.destroy

    respond_to do |format|
      format.html { redirect_to(new_contact_credit_control_url) }
      format.xml  { head :ok }
    end
  end
end
