class ContactsController < ApplicationController
  
  before_filter :authenticate_user!, :except => []
  load_and_authorize_resource
  
  # GET /contacts
  # GET /contacts.xml
  def index
    @contacts = Contact.find_all_by_company_id_and_status(current_user.company_id,false)
    @group = Group.new
    
   
    respond_to do |format|
        format.html
       format.csv { send_data Contact.to_csv }
       format.xls { send_data Contact.to_csv(col_sep: "\t") }
    end
  end

  # GET /contacts/1
  # GET /contacts/1.xml
  def show
    @contact = Contact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @contact }
    end
  end

  # GET /contacts/new
  # GET /contacts/new.xml
  def new
    @contact = Contact.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @contact }
    end
  end

  # GET /contacts/1/edit
  def edit
    @contact = Contact.find(params[:id])
  end

  # POST /contacts
  # POST /contacts.xml
  def create
    @contact = Contact.new(params[:contact])

    respond_to do |format|
      if @contact.save
        format.html { redirect_to(@contact, :notice => 'Contact was successfully created.') }
        format.xml  { render :xml => @contact, :status => :created, :location => @contact }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /contacts/1
  # PUT /contacts/1.xml
  def update
    @contact = Contact.find(params[:id])

    respond_to do |format|
      if @contact.update_attributes(params[:contact])
        format.html { redirect_to(@contact, :notice => 'Contact was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.xml
  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy

    respond_to do |format|
      format.html { redirect_to(contacts_url) }
      format.xml  { head :ok }
    end
  end
  
  def  toggled_status
    @contact = Contact.find(params[:id])
    @contact.status = !@contact.status?
    @contact.save!
    redirect_to contacts_path
  end
  
  def restore
      @contacts = Contact.find_all_by_company_id_and_status(current_user.company_id,true)
  end
 
   def csv_import  
      if request.post? && params[:dump][:file].present?
         infile = params[:dump][:file].read
       
         CSV.parse(infile, :headers => true).each do |row|
           Contact.create!(row.to_hash)
         end
           redirect_to contacts_path
      else
        redirect_to root_path
      end
  end
 
end
