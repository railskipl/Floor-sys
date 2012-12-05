
class GroupsController < ApplicationController
   layout :resolve_layout

  # ...

  # GET /groups
  # GET /groups.xml
  def index
    @groups = Group.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @groups }
    end
  end

  # GET /groups/1
  # GET /groups/1.xml
  def show
    @group = Group.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @group }
    end
  end

  # GET /groups/new
  # GET /groups/new.xml
  def new
    @group = Group.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @group }
    end
  end

  # GET /groups/1/edit
  def edit
    @group = Group.find(params[:id])
  end

  # POST /groups
  # POST /groups.xml
  def create
    @group = Group.new(params[:group])
    if !params[:contact_groups][:group_id].blank? 
      @a = params[:contact_groups][:group_id]
      @b  = params[:group]['contact_ids']
   
       recipients_array = params[:group]['contact_ids']
       recipients_array.each do |r|
        ContactGroup.create(:contact_id => r,:group_id => @a)
       end
       redirect_to contacts_path  
      
    else
      if @group.save 
        redirect_to  contacts_path  
      else 
        redirect_to contacts_path  
      end
    end
 end

  # PUT /groups/1
  # PUT /groups/1.xml
  def update
  
    @group = Group.find(params[:id])

    respond_to do |format|
      if @group.update_attributes(params[:group])
        format.html { redirect_to(@group, :notice => 'Group was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @group.errors, :status => :unprocessable_entity }
      end
    end
  end



  # DELETE /groups/1
  # DELETE /groups/1.xml
  def destroy
    @group = Group.find(params[:id])
    @group.destroy

    respond_to do |format|
      format.html { redirect_to(groups_url) }
      format.xml  { head :ok }
    end
  end


  # def move_to
#        
       # @a = params[:contact_groups][:group_id]
#       
       # @b  = params[:group]['contact_ids']
#        
#        
       # recipients_array = params[:group]['contact_ids']
#         
       # recipients_array.each do |r|
#        
#       
        # ContactGroup.find_by_sql(%q{ UPDATE  contact_groups SET group_id =  #{@a} WHERE contact_id = #{r}})
#          
       # end
#        
          # redirect_to :controller=>"groups", :action=>"show", :id=>params[:group_id]
#        
# 
  # end

  private

  def resolve_layout
    case action_name
    when "new", "create"
      "group"
    else
      "application"
    end
  end

end