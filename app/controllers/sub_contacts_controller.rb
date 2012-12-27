class SubContactsController < ApplicationController
  before_filter :authenticate_user!, :except => []
  # GET /sub_contacts
  # GET /sub_contacts.xml
  def index
    @sub_contacts = SubContact.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sub_contacts }
    end
  end

  # GET /sub_contacts/1
  # GET /sub_contacts/1.xml
  def show
    @sub_contact = SubContact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sub_contact }
    end
  end

  # GET /sub_contacts/new
  # GET /sub_contacts/new.xml
  def new
    @sub_contact = SubContact.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sub_contact }
    end
  end

  # GET /sub_contacts/1/edit
  def edit
    @sub_contact = SubContact.find(params[:id])
  end

  # POST /sub_contacts
  # POST /sub_contacts.xml
  def create
    @sub_contact = SubContact.new(params[:sub_contact])

    respond_to do |format|
      if @sub_contact.save
        format.html { redirect_to(contact_path(@sub_contact.contact_id) , :notice => 'Sub contact was successfully created.') }
        format.xml  { render :xml => @sub_contact, :status => :created, :location => @sub_contact }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sub_contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sub_contacts/1
  # PUT /sub_contacts/1.xml
  def update
    @sub_contact = SubContact.find(params[:id])

    respond_to do |format|
      if @sub_contact.update_attributes(params[:sub_contact])
        format.html { redirect_to(contact_path(@sub_contact.contact_id), :notice => 'Sub contact was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sub_contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_contacts/1
  # DELETE /sub_contacts/1.xml
  def destroy
    @sub_contact = SubContact.find(params[:id])
    @sub_contact.destroy

    respond_to do |format|
      format.html { redirect_to(contact_url(@sub_contact.contact_id)) }
      format.xml  { head :ok }
    end
  end
end
