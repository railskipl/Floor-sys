class CustomersController < ApplicationController
  
  before_filter :authenticate_user!, :except => []
  load_and_authorize_resource
  
  # GET /customers
  # GET /customers.xml
  def index
    @customers = Customer.find_all_by_company_id(current_user.company_id)
    

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @customers }
    end
  end

  # GET /customers/1
  # GET /customers/1.xml
  def show
    @customer = Customer.find(params[:id])
    

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @customer }
    end
  end

  # GET /customers/new
  # GET /customers/new.xml
  def new
    @customer = Customer.new
    
    @contact = Contact.find_all_by_company_id(current_user.company_id)

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @customer }
    end
  end
 
  # GET /customers/1/edit
  def edit
    @customer = Customer.find(params[:id])
    @contact = Contact.find_all_by_company_id(current_user.company_id)
  end

  # POST /customers
  # POST /customers.xml
  def create
    @customer = Customer.new(params[:customer])

    respond_to do |format|
      if @customer.save
          if @customer.status == 'c'
            format.html { redirect_to(@customer, :notice => 'Customer was successfully created.') }
            format.xml  { render :xml => @customer, :status => :created, :location => @customer }
           else
             format.html { redirect_to(new_prospect_path) }
          end
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @customer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /customers/1
  # PUT /customers/1.xml
  def update
    @customer = Customer.find(params[:id])

    respond_to do |format|
      if @customer.update_attributes(params[:customer])
        format.html { redirect_to(@customer, :notice => 'Customer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @customer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.xml
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    respond_to do |format|
      format.html { redirect_to(customers_url) }
      format.xml  { head :ok }
    end
  end
  
  def make_as_prospect
    @cnt = Customer.find(params[:id])
    showtimes = Customer.update(@cnt.id, :status => 'p') 
    redirect_to(new_prospect_path)
  end
  
end
