class UsersController < ApplicationController
  
  before_filter :authenticate_user!, :except => []
  
  def index
    unless current_user.company_id.nil?
      @users = User.find_all_by_company_id(current_user.company_id)
    else
     @users = User.all
      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @users }
      end
   end
  end
    
    
  def dashboard
      @users = User.all
  end


   def show
     @user = User.find(params[:id])
     respond_to do |format|
       format.html # show.html.erb
       format.xml  { render :xml => @user }
     end
   end


   def new
     @user = User.new
        @current_method = "new"

     respond_to do |format|
       format.html # new.html.erb
       format.xml  { render :xml => @user }
     end
   end


   def edit
     @user = User.find(params[:id])
   end


   def create
     @user = User.new(params[:user])

     respond_to do |format|
       if @user.save
         format.html { redirect_to('/users') }
         format.xml  { render :xml => @user, :status => :created, :location => @user }
       else
         format.html { render :action => "new" }
         format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
       end
     end
   end


   def update
     @user = User.find(params[:id])

     respond_to do |format|
       if @user.update_attributes(params[:user])
         format.html { redirect_to('/users') }
         format.xml  { head :ok }
       else
         format.html { render :action => "edit" }
         format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
       end
     end
   end


   def destroy
     @user = User.find(params[:id])
     @user.destroy


     respond_to do |format|
       format.html { redirect_to(users_url) }
       format.xml  { head :ok }
     end
   end
   
end
