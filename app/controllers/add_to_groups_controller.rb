class AddToGroupsController < ApplicationController
  # GET /add_to_groups
  # GET /add_to_groups.xml
  layout 'group'
  def index
    
    @add_to_groups = AddToGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @add_to_groups }
    end
  end

  # GET /add_to_groups/1
  # GET /add_to_groups/1.xml
  def show
    @add_to_group = AddToGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @add_to_group }
    end
  end

  # GET /add_to_groups/new
  # GET /add_to_groups/new.xml
  def new
    @add_to_group = AddToGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @add_to_group }
    end
  end

  # GET /add_to_groups/1/edit
  def edit
    @add_to_group = AddToGroup.find(params[:id])
  end

  # POST /add_to_groups
  # POST /add_to_groups.xml
  def create
    @add_to_group = AddToGroup.new(params[:add_to_group])

    respond_to do |format|
      if @add_to_group.save
        format.html { redirect_to(@add_to_group, :notice => 'Add to group was successfully created.') }
        format.xml  { render :xml => @add_to_group, :status => :created, :location => @add_to_group }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @add_to_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /add_to_groups/1
  # PUT /add_to_groups/1.xml
  def update
    @add_to_group = AddToGroup.find(params[:id])

    respond_to do |format|
      if @add_to_group.update_attributes(params[:add_to_group])
        format.html { redirect_to(@add_to_group, :notice => 'Add to group was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @add_to_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /add_to_groups/1
  # DELETE /add_to_groups/1.xml
  def destroy
    @add_to_group = AddToGroup.find(params[:id])
    @add_to_group.destroy

    respond_to do |format|
      format.html { redirect_to(add_to_groups_url) }
      format.xml  { head :ok }
    end
  end
end
