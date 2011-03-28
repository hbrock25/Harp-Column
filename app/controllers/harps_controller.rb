class HarpsController < ApplicationController
  skip_before_filter :authenticate_user!, :only => [:index, :show]
  # GET /harps
  # GET /harps.xml
  def index
    @harps = Harp.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @harps }
    end
  end

  # GET /harps/1
  # GET /harps/1.xml
  def show
    @harp = Harp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @harp }
    end
  end

  # GET /harps/new
  # GET /harps/new.xml
  def new
    @harp = Harp.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @harp }
    end
  end

  # GET /harps/1/edit
  def edit
    @harp = Harp.find(params[:id])
  end

  # POST /harps
  # POST /harps.xml
  def create
    @harp = Harp.new(params[:harp])
    @harp.user_id = current_user
    respond_to do |format|
      if @harp.save
        format.html { redirect_to(@harp, :notice => 'Harp was successfully created.') }
        format.xml  { render :xml => @harp, :status => :created, :location => @harp }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @harp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /harps/1
  # PUT /harps/1.xml
  def update
    @harp = Harp.find(params[:id])
    
    respond_to do |format|
      if @harp.update_attributes(params[:harp])
        format.html { redirect_to(@harp, :notice => 'Harp was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @harp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /harps/1
  # DELETE /harps/1.xml
  def destroy
    @harp = Harp.find(params[:id])
    @harp.destroy

    respond_to do |format|
      format.html { redirect_to(harps_url) }
      format.xml  { head :ok }
    end
  end
end
